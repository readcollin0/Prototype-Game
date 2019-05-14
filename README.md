# Prototype Game

This is a repository containing the code for my groups prototype game project for CSIS-160, intro to game development.

This is not a complete game (as suggested by the title)

## Builds
Versions prior to `v0.2.0-prealpha` have only one build.

Version from `v0.2.0-prealpha` to `v0.4.1-prealpha` have two builds:
* A standard build
* A `debug` build with informational overlays (This one is not intended for production purposes)

Versions `v0.4.2-prealpha` and above have two different builds:
* A `.zip` file for portable usage
* A singe portable executable `.exe`

Due to technical limitations with GameMaker, the command-line options added in `v0.4.2-prealpha`  
are only available with the `.zip` version of the game, and will have issues with the `.exe` download.

## Usage
For `.exe` builds of the game, simply run the executable via any desired method.

The following command-line options are available for usage with the `.zip` builds of the game:
* `--debug`
	* Imitates the behavior previously found in the seperate debug builds.
* `--testLevel`
	* Allows access to the test level; used for mechanics testing and demonstration.
* `--level <level_id>` or `-l <level_id>`
	* Changes what level the game begins with.