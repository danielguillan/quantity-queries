const glob = require('glob');
const path = require('path');
const sassTrue = require('sass-true');

describe('Sass', () => {
  const testFiles = glob.sync(
    path.resolve(process.cwd(), 'tests/**/*.spec.scss')
  );

  testFiles.forEach((file) => sassTrue.runSass({ file }, { describe, it }));
});
