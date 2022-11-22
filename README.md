#### Coding Challenge Terraform deployment

App can be run in docker-compose. To deploy it to a cloud, my main experience is based on using ECS tasks to run the docker containers. I tried to think through how I would deploy it to Cloudflare, but got stuck on some points: 

- In the past, I've only seen Cloudflare used as a loadbalancer or rate limiter, not for running containerized applications or databases. I know it's possible to deploy applications directly to the edge and run them there and I read up on some instructions to do this using [wrangler](https://developers.cloudflare.com/workers/) but I wasn't quite sure if this was the point of the exercise.
- I followed instructions for how to create a basic MySQL database on AWS, though what's obviously still missing is a way for the application to interact with the database. In my experience using ECS tasks, I would create IAM policies to access the database and it was pretty straight-forward since it was all in the AWS environment. I did see [some instructions](https://github.com/cloudflare/worker-template-postgres) for launching a postgres database as part of cloudflare, but again I wasn't sure if that was the purpose of the exercise.

See terraform directory for template of what I started, though it is incomplete. 

-------------

# 🧰 Simple TypeScript Starter | 2022

> We talk about a lot of **advanced Node.js and TypeScript** concepts on [the blog](https://khalilstemmler.com), particularly focused around Domain-Driven Design and large-scale enterprise application patterns. However, I received a few emails from readers that were interested in seeing what a basic TypeScript starter project looks like. So I've put together just that.

### Features

- Minimal
- TypeScript v4
- Testing with Jest
- Linting with Eslint and Prettier
- Pre-commit hooks with Husky
- VS Code debugger scripts
- Local development with Nodemon

### Scripts

#### `npm run start:dev`

Starts the application in development using `nodemon` and `ts-node` to do hot reloading.

#### `npm run start`

Starts the app in production by first building the project with `npm run build`, and then executing the compiled JavaScript at `build/index.js`.

#### `npm run build`

Builds the app at `build`, cleaning the folder first.

#### `npm run test`

Runs the `jest` tests once.

#### `npm run test:dev`

Run the `jest` tests in watch mode, waiting for file changes.

#### `npm run prettier-format`

Format your code.

#### `npm run prettier-watch`

Format your code in watch mode, waiting for file changes.
