// CONSTANTS
const DIGIT_OR_COMMA_PATTERN = /[\d,]/;
const POSITIVE_REAL_NUMBER_PATTERN = /^(?!0+(?:,0+)?$)\d+(?:,\d+)?$/;
const CONTROL_KEYS = Object.freeze(["Backspace", "Delete", "Tab", "Escape", "Enter", "ArrowLeft", "ArrowRight", "ArrowUp", "ArrowDown"]);
const LANGUAGE_LOCALE = "es-CO";
// UTILS
const normalizeCommaSeparator = input => Number(input.value.replace(",", "."));
const cleanContent = element => { element.innerHTML && (element.innerHTML = ""); };
const generateReport = (weight = 68.45, height = 1.72) => {
    const personBodyMassIndex = new BMC(weight, height);
    const { BODY_MASS_INDEX, CATEGORY_NAME, IMAGE_PATH } = personBodyMassIndex.getResults();
    outputResultDiv.innerHTML = `
        <h3>${CATEGORY_NAME.toUpperCase()}</h3>
        <img alt="${CATEGORY_NAME}" src="${IMAGE_PATH}">
        <h4>IMC: ${BODY_MASS_INDEX.toLocaleString(LANGUAGE_LOCALE)} kg/m<sup>2</sup></h4>`;
};
// DOM Elements
const bodyMassIndexForm = document.forms.namedItem("body-mass-index");
const textInputs = [...bodyMassIndexForm.elements];
const calculateButton = textInputs.pop();
const outputResultDiv = document.getElementById("show-results");
// HANDLE EVENTS
function handleSubmit(event) { // CALCULATE BMC RESULTS AND DISPLAY THEM IN THE VIEW
    event.preventDefault();
    const bodyMassIndexParams = textInputs.map(normalizeCommaSeparator);
    generateReport(...bodyMassIndexParams);
}
function handleKeydown(event) { // ALLOW ONLY DIGITS OR COMMA TO BE ENTERED IN TEXT INPUTS
    DIGIT_OR_COMMA_PATTERN.test(event.key)
        || CONTROL_KEYS.includes(event.key)
        || event.preventDefault();
}
function handleBlur(event) { // CLEAN INPUT IF IT'S NOT A VALID NUMBER AND LIMIT THE NUMBER OF DECIMAL PLACES.
    event.target.value = POSITIVE_REAL_NUMBER_PATTERN.test(event.target.value)
        ? new Intl.NumberFormat(LANGUAGE_LOCALE, { useGrouping: false })
            .format(normalizeCommaSeparator(event.target))
        : "";
    event.target.value === "0" && (event.target.value = "");
    cleanContent(outputResultDiv);
}
// LISTEN EVENTS
bodyMassIndexForm.addEventListener("submit", handleSubmit);
textInputs.forEach(input => {
    input.addEventListener("keydown", handleKeydown);
    input.addEventListener("blur", handleBlur);
});
// POO
class BMC {
    #weight;
    #height;
    #bodyMassIndex;
    static #LIMITS = Object.freeze([16, 17, 18.5, 25, 30, 35, 40]);
    static #CATEGORIES = Object.freeze([
        "Delgadez Severa",
        "Delgadez Moderada",
        "Delgadez Leve",
        "Normal",
        "Sobrepeso",
        "Obesidad Clase I",
        "Obesidad Clase II",
        "Obesidad Clase III"
    ]);
    constructor(weight = 0, height = 1) {
        this.#weight = weight;
        this.#height = height;
        this.#bodyMassIndex = this.#setBodyMassIndex();
    }

    #setBodyMassIndex() { return this.#weight / this.#height ** 2; }
    #determineCategoryIndex() {
        const FOUND_INDEX = BMC.#LIMITS.findIndex(limit => this.#bodyMassIndex < limit);
        return FOUND_INDEX === -1 ? BMC.#LIMITS.length : FOUND_INDEX;
    }

    setWeight(weight) {
        this.#weight = weight;
        this.#setBodyMassIndex();
    }
    setHeight(height) {
        this.#height = height;
        this.#setBodyMassIndex();
    }

    getWeight() { return this.#weight; }
    getHeight() { return this.#height; }
    getBodyMassIndex() { return this.#bodyMassIndex; }
    getCategory() { return BMC.#CATEGORIES[this.#determineCategoryIndex()]; }
    getResults() {
        const CATEGORY_INDEX = this.#determineCategoryIndex();
        return Object.freeze({
            BODY_MASS_INDEX: this.#bodyMassIndex,
            CATEGORY_NAME: BMC.#CATEGORIES[CATEGORY_INDEX],
            IMAGE_PATH: `./img/${CATEGORY_INDEX}.png`
        });
    }
};