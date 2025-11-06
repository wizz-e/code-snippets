/**
 * Description: Common array operations and utilities
 * Author: Code Snippets Repository
 * Date: 2025-11-06
 * 
 * Usage:
 *     const unique = removeDuplicates([1, 2, 2, 3, 4, 4]);
 *     const chunks = chunkArray([1, 2, 3, 4, 5], 2);
 * 
 * Dependencies:
 *     None - uses native JavaScript
 */

/**
 * Remove duplicate values from an array
 * @param {Array} arr - The input array
 * @returns {Array} - Array with duplicates removed
 */
function removeDuplicates(arr) {
    return [...new Set(arr)];
}

/**
 * Split an array into chunks of specified size
 * @param {Array} arr - The input array
 * @param {number} size - Size of each chunk
 * @returns {Array} - Array of chunks
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
 * @param {Array} arr - The nested array
 * @returns {Array} - Flattened array
 */
function flattenArray(arr) {
    return arr.flat(Infinity);
}

/**
 * Get the sum of array elements
 * @param {Array<number>} arr - Array of numbers
 * @returns {number} - Sum of all elements
 */
function sumArray(arr) {
    return arr.reduce((sum, num) => sum + num, 0);
}

// Example usage
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        removeDuplicates,
        chunkArray,
        flattenArray,
        sumArray
    };
}

// Example tests
if (typeof window === 'undefined') {
    console.log('Remove duplicates:', removeDuplicates([1, 2, 2, 3, 4, 4]));
    console.log('Chunk array:', chunkArray([1, 2, 3, 4, 5], 2));
    console.log('Flatten array:', flattenArray([1, [2, [3, [4, 5]]]]));
    console.log('Sum array:', sumArray([1, 2, 3, 4, 5]));
}
