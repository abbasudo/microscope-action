<h2 align="center">
     laravel microscope action
</h2>


<p align="center">
    <img width="100px" src="https://user-images.githubusercontent.com/6961695/78522127-920e9e80-77e1-11ea-869a-05a29466e6b0.png" alt="widgetize_header"></img>
    <img width="100px" src="https://avatars.githubusercontent.com/u/44036562?s=200&v=4" alt="widgetize_header"></img>
</p>

<h4 align="center">
  Built with <a href="https://github.com/imanghafoori1/laravel-microscope">laravel microscope</a> for laziest laravel developers ;)
</h4>

##
This github action helps you to automate test on each push

## About laravel microscope:
[laravel microscope](https://github.com/imanghafoori1/laravel-microscope) is a auto test generator for laravel. it creates basic and complex test for your laravel project and checks for bugs and best practises in your code and guides you to write a better code. for more information read the full [documentation](https://github.com/imanghafoori1/laravel-microscope).</br>
this github action automates the process and makes it even easier to check your code.

## Usage:
first set up a new github action from actions tab in your laravel repository . if you are not fimilar with github actions follow this [guide](https://docs.github.com/en/actions/quickstart)
basic usage example :
```yml
name: microscope

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the master branch
  push:
    branches: [ master ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - uses: llabbasmkhll/microscope-action@master
```

using the action without any parameter uses check:all by default
for specifying custom command instead of check:all difne command attribute

basic usage example :
```yml
name: microscope

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the master branch
  push:
    branches: [ develop ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - uses: llabbasmkhll/microscope-action@master
        with :
          command : check:dd
```

now pushing to the branch will run microscope tests .
