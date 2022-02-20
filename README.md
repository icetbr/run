# Run - The Simplest Build Tool on Earth
> forked from [do][1]

## Anti-features
- No installation
- No libraries
- No dependencies
- No overhead (npm scripts have a [nagging delay][4] of a few miliseconds)


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

[1]: https://github.com/8gears/do
[2]: https://github.com/google/zx
[3]: https://bertvv.github.io/cheat-sheets/Bash.html
[4]: https://spin.atomicobject.com/2021/03/22/makefiles-vs-package-json-scripts/