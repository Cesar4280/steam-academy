// DOM Elements
const formBodyMassIndex = document.forms.namedItem("body-mass-index");
const inputWeight = formBodyMassIndex.elements.namedItem("weight");
const inputHeight = formBodyMassIndex.elements.namedItem("height");
const buttonCalculate = formBodyMassIndex.elements.namedItem("calculate");
const outputResult = document.getElementById("show-results");
// HANDLE EVENTS
const handleSubmit = event => event.preventDefault();
const handleClick = () => {
    const weight = inputWeight.value, height = inputHeight.value;
    if (weight?.length && height?.length) {
        const BodyMassIndexPerson = new BMC(Number(weight), Number(height));
        const { BODY_MASS_INDEX, CATEGORY_NAME, IMAGE_PATH } = BodyMassIndexPerson.getResults();
        outputResult.innerHTML = `
        <h3>${CATEGORY_NAME.toUpperCase()}</h3>
        <img alt="${CATEGORY_NAME}" src="${IMAGE_PATH}">
        <h4>IMC: ${BODY_MASS_INDEX.toFixed(2)} kg/m<sup>2</sup></h4>`;
    }
};
// LISTEN EVENTS
formBodyMassIndex.addEventListener("submit", handleSubmit);
buttonCalculate.addEventListener("click", handleClick);
// POO
class BMC {
    #weight;
    #height;
    #bodyMassIndex;
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
        let categoryIndex = 8;
        if (this.#bodyMassIndex < 16) categoryIndex = 0;
        else if (this.#bodyMassIndex < 17) categoryIndex = 1;
        else if (this.#bodyMassIndex < 17) categoryIndex = 2;
        else if (this.#bodyMassIndex < 18.5) categoryIndex = 3;
        else if (this.#bodyMassIndex < 25) categoryIndex = 4;
        else if (this.#bodyMassIndex < 30) categoryIndex = 5;
        else if (this.#bodyMassIndex < 35) categoryIndex = 6;
        else if (this.#bodyMassIndex < 40) categoryIndex = 7;
        return categoryIndex;
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

/*
const person = new BMC(65, 1.72);
person.setHeight(1.75);
person.setWeight(66);
console.log(person.getWeight());
console.log(person.getHeight());
console.log(person.getBodyMassIndex());
*/