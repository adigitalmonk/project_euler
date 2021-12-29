# Project Euler

This is a project containing solutions to Project Euler problems.

## Installation

This project contains a `gemspec` that can be used to add the different
components to your own codebase using `bundle`.

```gemspec
gem 'project_euler', github: 'adigitalmonk/project_euler'
```

## Contributing / Testing

All contributions should have corresponding tests. There is a job in the
`Rakefile` to run the tests.

```
> rake test
```

Specific solutions are expected to be in `lib/euler.rb`. Helpers and tools for
the solutions should be implemented in separate classes or modules (e.g.,
`lib/fibomatic.rb`).
