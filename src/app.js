function greet(name) {
    return `Hello, ${name}!`;
}

module.exports = greet;

if (require.main === module) {
    console.log(greet("World"));
    // This will only run if the script is executed directly
}