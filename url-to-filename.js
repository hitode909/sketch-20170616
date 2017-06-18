const url = process.argv[2];
const baseName = url.replace(/[.\/:]/g, '-');
const fileName = `${baseName}.png`;
console.log(fileName);
