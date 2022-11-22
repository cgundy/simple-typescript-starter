#### Coding Challenge Terraform deployment

My main experience with running applications in the cloud has been through containerized applications (primarily ECS) with Docker images. I've only seen Cloudflare used as a load balancer or rate limiter, so I had to do some reading on using cloudflare workers to deploy applications. 

I followed [this tutorial](https://blog.cloudflare.com/deploy-workers-using-terraform/) for the cloudflare terraform portion, but was a little confused about how to actually get the app loaded onto the worker. It looked like it just needed to be pointed to the relevant script, but I'd imagine that there would still need to be some packaging required for the entire application. I also think I would need to provide an entry point of some sort to run `npm run start`.

I wasn't able to find a way to host a database on cloudflare, but I found [these instructions](https://developers.cloudflare.com/workers/tutorials/query-postgres-from-workers-using-database-connectors) for how to connect to a database. I'm not really sure how you would manage permissions, though, it looked like there might be some option with secrets. I've mainly only worked within the AWS ecosystem where access could be managed with IAM policies. 

See examples in `terraform/` directory. 

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
