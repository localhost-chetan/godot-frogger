# Project Description

## Overview
A 2D top-down survival game built in Godot 4.6.2 using GDScript. The player must cross multiple crowded roads within a time limit and reach the destination without getting hit by traffic.

## Gameplay
- Player navigates across lanes of moving vehicles
- A countdown timer adds urgency — fail to reach the destination in time and it's game over
- Contact with any vehicle kills the player instantly
- Goal: reach the destination zone before the timer hits zero

## Camera
- Follows the player with smooth lerp-based transitions
- Slight zoom applied to keep focus tight on the player's immediate surroundings

## Tech Stack
- **Engine:** Godot 4.6.2
- **Language:** GDScript
- **Asset Tracking:** Git LFS (binary assets are tracked via `.gitattributes`, not committed directly)
- **Version Control:** Git + GitHub

## Code Standards
- **Always use explicit static type annotations. Never use type inference (`:=`).**
- Every variable, parameter, and return type must be explicitly declared
- Correct: `var speed: float = 5.0`
- Wrong: `var speed := 5.0`
- Correct: `func move(delta: float) -> void:`
- Wrong: `func move(delta):`
- This applies to all generated code without exception — no shortcuts, no implicit types

## Repository Structure (intended)
├── assets/           # Sprites, audio, fonts — tracked via Git LFS
├── scenes/           # .tscn files for all game scenes
├── scripts/          # .gd scripts
├── project.godot
├── .gitattributes    # Git LFS tracking rules
└── ./.opencode/agents/project-description.md

## Git LFS
All binary assets (PNG, WAV, OGG, TTF, etc.) are tracked using Git LFS to keep the repository size manageable. Raw asset files are never committed directly to the Git object store.

## Agent
Project is initialized with `opencode` agent via `opencode agent create` for AI-assisted development within the project directory.
