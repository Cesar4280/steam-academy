// CONSTANTS
const DIGIT_OR_COMMA_PATTERN = /[\d,]/;
const CONTROL_KEYS = Object.freeze([
    "Backspace", "Delete", "Tab", "Escape", "Enter",
    "ArrowLeft", "ArrowRight", "ArrowUp", "ArrowDown"
]);
const normalizeFloatString = input => Number(input.value.replace(",", "."));
// DOM Elements
const $formDOM = document.forms.namedItem("body-mass-index");
const $inputsDOM = [...$formDOM.elements];
const $outputResultDOM = document.getElementById("show-results");
// HANDLE EVENTS
const handleSubmit = event => {
    event.preventDefault();
    const weight = normalizeFloatString(inputWeight);
    const height = normalizeFloatString(inputHeight);
    const bodyMassIndexPerson = new BMC(weight, height);
    const { BODY_MASS_INDEX, CATEGORY_NAME, IMAGE_PATH } = bodyMassIndexPerson.getResults();
    $outputResultDOM.innerHTML = `
        <h3>${CATEGORY_NAME.toUpperCase()}</h3>
        <img alt="${CATEGORY_NAME}" src="${IMAGE_PATH}">
        <h4>IMC: ${BODY_MASS_INDEX.toLocaleString("es-CO")} kg/m<sup>2</sup></h4>`;
    console.log(`Weight=${weight} height:${height} IMC: ${BODY_MASS_INDEX}`);
};
const handleKeydown = event => { // ALLOW ONLY DIGITS OR COMMA TO BE ENTERED IN TEXT INPUTS
    DIGIT_OR_COMMA_PATTERN.test(event.key)
        || CONTROL_KEYS.includes(event.key)
        || event.preventDefault();
};
const handleBlur = event => {
    let text = event.target.value;
    text.charAt(0) === "," && (text = text.slice(1));
    text.at(-1) === "," && (text = text.slice(0, -1));
}
// LISTEN EVENTS
formBodyMassIndex.addEventListener("submit", handleSubmit);
inputWeight.addEventListener("keydown", handleKeydown);
inputHeight.addEventListener("keydown", handleKeydown);
inputWeight.addEventListener("blur", handleBlur);
inputHeight.addEventListener("blur", handleBlur);
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