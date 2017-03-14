# Domain Models

## Objects:
1. Person

2. Bike

3. DockingStation

## Messages:
2. working?

3. release_bike

## Nouns (bold):
As a **person**, So that I can use a **bike**, I'd like a **docking station** to release a bike.
As a **person**, So that I can use a good **bike**, I'd like to if a bike is working.

## Verbs (bold):
As a person, So that I can **use** a bike, I'd like a docking station to **release a bike**.
As a person, So that I can **use** a good bike, I'd like to **see if a bike is working.**

How Objects will use Messages to communicate:

Bike <-- working? --> true/false

DockingStation <-- release_bike --> a Bike
