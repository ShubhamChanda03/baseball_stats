# Baseball Statistics Web Application

## Overview
This web application displays sortable statistics for baseball players from the 1998 season. Users can sort by AVG, HR, RBI, RUNS, SB, and OPS.

## Setup

### Backend (Rails)
1. Install dependencies:
    ```bash
    bundle install
    ```
2. Migrate the database:
    ```bash
    rails db:migrate
    ```
3. Seed the database:
    ```bash
    rails import:players
    ```
4. Start the Rails server:
    ```bash
    rails server
    ```

## Deployment

### Heroku
1. Create Heroku app:
    ```bash
    heroku create
    ```
2. Deploy the application:
    ```bash
    git push heroku main
    ```

## Design Decisions
- Used Rails with HAML for server-side rendering and templating.
- Utilized turbo_stream for client-side interactivity and sorting without full page reloads.
- Implemented pagination with Kaminari to manage large datasets efficiently.
- Chose Nokogiri for XML parsing due
