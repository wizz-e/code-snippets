/**
 * Array Helper Functions
 * 
 * Common array operations and transformations.
 */


/**
 * Remove duplicates from an array
 * @param {Array} arr - Input array
 * @returns {Array} Array with duplicates removed
 */
function removeDuplicates(arr) {
    return [...new Set(arr)];
}


/**
 * Chunk an array into smaller arrays of specified size
 * @param {Array} arr - Input array
 * @param {number} size - Size of each chunk
 * @returns {Array} Array of chunks
 */
function chunkArray(arr, size) {
    const chunks = [];
    for (let i = 0; i < arr.length; i += size) {
        chunks.push(arr.slice(i, i + size));
    }
    return chunks;
}


/**
 * Flatten a nested array
 * @param {Array} arr - Nested array
 * @returns {Array} Flattened array
 */
function flattenArray(arr) {
    return arr.flat(Infinity);
}


/**
 * Get random element from array
 * @param {Array} arr - Input array
 * @returns {*} Random element
 */
function getRandomElement(arr) {
    return arr[Math.floor(Math.random() * arr.length)];
}


// Example usage
const numbers = [1, 2, 2, 3, 4, 4, 5];
console.log("Original:", numbers);
console.log("Unique:", removeDuplicates(numbers));
console.log("Chunked:", chunkArray(numbers, 3));
console.log("Random element:", getRandomElement(numbers));
