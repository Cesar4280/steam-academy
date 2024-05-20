// Ejemplo implementando el metodo POST:
async function createPost(url = "", data = {}) {
    let postResponse = null;
    // Opciones por defecto estan marcadas con un *
    const options = {
        method: "POST", // *GET, POST, PUT, DELETE, etc.
        mode: "cors", // no-cors, *cors, same-origin
        cache: "no-cache", // *default, no-cache, reload, force-cache, only-if-cached
        credentials: "same-origin", // include, *same-origin, omit
        headers: {
            "Content-Type": "application/json"
            // "Content-Type": "application/x-www-form-urlencoded",
        },
        redirect: "follow", // manual, *follow, error
        referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify(data) // body data type must match "Content-Type" header
    };
    try {
        const response = await fetch(url, options);
        if (response.ok) {
            postResponse = response.json(); // parses JSON response into native JavaScript objects
        } else {
            console.log("Respuesta de red OK pero respuesta HTTP no OK");
        }
    } catch (error) {
        console.log("Hubo un problema con la petición Fetch:" + error.message);
    }
    return postResponse;
}

const URI = "https://jsonplaceholder.typicode.com/posts";
const newPost = { userId: 1, title: "TEST", body: "DESCRIPTION" };

createPost(URI, newPost).then(data => { console.log(data); }); // JSON data parsed by `data.json()` call
