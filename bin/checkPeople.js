const fs = require("fs");
const Ajv = require("ajv");

const ajv = new Ajv();

const schema = {
    type: "array",
    uniqueItems: true,
    minItems: 1,
    items: {
        type: "object",
        required: ["name", "title", "entries"],
        properties: {
            github: {type: "string"},
            name: {type: "string"},
            title: {type: "string"},
            entries: {
                type: "array",
                uniqueItems: true,
                minItems: 1,
                items: {
                    type: "object",
                    required: ["name", "link"],
                    properties: {
                        name: {type: "string"},
                        link: {type: "string"},
                    },
                    additionalProperties: false,
                },
            },
        },
        additionalProperties: false,
    },
};

const PEOPLE_PATH = "./people.json";

const [actor] = process.argv.slice(2);

console.log(`Triggered by ${actor}`);

if (!fs.existsSync(PEOPLE_PATH)) {
    throw "No people file found";
}

let people;
try {
    people = JSON.parse(fs.readFileSync(PEOPLE_PATH));
} catch (err) {
    throw "Could not read people.json as JSON";
}

const person = people.find(person => person.github === actor);
if (!person) {
    throw `${actor} isn't in people.json!`;
}

if (!(person.entries && person.entries.length > 0)) {
    throw `${actor} is missing entries!`;
}

for (const entry of person.entries) {
    const {link} = entry;
    if (!(link.startsWith("http") || fs.existsSync(link))) {
        throw `${link} not found!`;
    }
}

const validate = ajv.compile(schema);
if (!validate(people)) {
    console.error(validate.errors);
    throw "people.json does not conform to json schema";
}

console.log("Checked!");
