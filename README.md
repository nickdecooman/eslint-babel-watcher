# eslint-babel-watcher
Eslint-Babel-Watcher is a minimal command line tool that runs Eslint and Babel, and restarts Node upon changes. 
It uses Gulp at its foundation and relies entirely on the `.eslint` and `.babelrc` configurations to run Eslint and Babel respectively. It has pretty formatted output too 🤡

## Installation

**NPM**
```
npm install eslint-babel-watcher
```

**Yarn**

Due to Yarn issue [#760](https://github.com/yarnpkg/yarn/issues/760), it is required to also explicitly install Gulp.

```
yarn add gulp eslint-babel-watcher
```

## Usage

```
./node_modules/.bin/watch
```

**Flags**

- `--watch <dir path>` will specify the watch path; If any of the files on this path changes, Eslint and Babel will run. Defaults to `"./src/**/*.js"`
- `--node_entry <file path>` will specify the entry file that is used upon restarting Node. Defaults to `"./build/index.js"`
