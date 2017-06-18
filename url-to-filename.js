const url = process.argv[2];
const baseName = url.replace(/[.\/:]/g, '-');
const fileName = `data/${baseName}.png`;
console.log(fileName);
