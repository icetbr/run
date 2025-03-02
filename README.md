# Run - The Simplest Build Tool on Earth
> forked from [do][1]


## Anti-features
- No installation
- No dependencies
- [No overhead](#overhead) (npm scripts have a [nagging delay][4] of a few miliseconds)


## Installation
Copy [`run.sh`](run.sh) to your project, customize it as needed.

**Optional**: add an alias
```sh
echo "alias run='./run.sh'" >> ~/.bash_aliases
source ~/.bashrc
```

## Usage

### 1 argument
```sh
$ ./run.sh build
I am building
```

### 2+ arguments (with alias)
```sh
$ run deploy a b c
I am deploying with Arg 1=a Arg 2=b and Arg 3=c
```

## Tips
- maintain a reusable set of [util functions](./utils.sh) for your projects
- consider [zx][2] for node projects with more complex builds
- consider [make vs package json scripts][4], it has a nice auto detection of files changed, and will only build what has changed
- [bash cheat sheet][3]

## Overhead
The time it takes to print "hello". Mostly a one time cost, printing 2 times "hello" in node takes only a few ms more. VsCode's terminal has an extra ~2ms overhead.

`cd overheadBenchmark && ./perf.sh`:
|    ms | command             | description |
| ----: | ------------------- | ----------- |
| 217.1 | npm start           | npm script  |
|  55.1 | bun start           | bun script  |
|  49.3 | node echo.js        | node        |
|  15.8 | bun echoBunShell.js | bun shell   |
|  16.2 | python3 echo.py     | python      |
|  14.1 | bun echo.js         | bun         |
|   4.5 | bun echoBun.sh      | bun shell   |
|   1.7 | perl echo.pl        | perl        |
|   0.7 | echo hello          | bash        |


[1]: https://github.com/8gears/do
[2]: https://github.com/google/zx
[3]: https://bertvv.github.io/cheat-sheets/Bash.html
[4]: https://spin.atomicobject.com/2021/03/22/makefiles-vs-package-json-scripts/

