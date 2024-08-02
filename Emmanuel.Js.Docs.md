# This markdown file is combination of javascript, React, git, aws documentation

## Javascript















## typescript
- Basic Types
Concept: Basic data types in TypeScript, such as string, number, and boolean.
Why: Strong typing helps catch errors at compile time, improving code quality and maintainability.
```ts let isDone: boolean = false;
let age: number = 32;
let name: string = "John";
```
- Interfaces
Concept: Defines the shape of an object.
Why: Interfaces in TypeScript enforce that certain properties exist on an object with a specific type, making the code more predictable and easier to refactor.
```ts 
interface User {
  name: string;
  age: number;
}

let user: User = { name: "John", age: 32 };
```
-  Functions
Concept: Typed functions and function parameters.
Why: Ensures that functions are called with the right argument types.
```ts
function greet(name: string): string {
  return "Hello, " + name;
}
```
- Classes 
- Concept: Classes with typed properties and methods.
Why: Organizes code and enforces type checks within class methods, improving code robustness.
```ts 
class Point {
  x: number;
  y: number;

  constructor(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  getDistance() {
    return Math.sqrt(this.x * this.x + this.y * this.y);
  }
}
```
- Enums
Concept: Enumerations which define a set of named constants.
Why: Improves the readability of the code by using descriptive names for sets of numeric values.
```ts
enum Color {Red, Green, Blue}
let c: Color = Color.Green;
```
- Generics
Concept: Allows the creation of reusable components.
Why: Provides a way to use types as variables in other types, making it possible to work over a variety of types rather than a single one.
```ts
function identity<T>(arg: T): T {
  return arg;
}
```
-  Advanced Types
Concept: Union, Intersection, and Conditional types.
Why: Allows more flexible type operations, which can be tailored to the needs of more complex systems.
```ts
type StringOrNumber = string | number;
type Text = string & { __brand: "text" };
type Computed<T> = T extends boolean ? "Yes" : "No";
```
- Decorators
Concept: A special kind of declaration that can be attached to a class declaration, method, accessor, property, or parameter.
Why: Decorators provide a way to add both annotations and a meta-programming syntax for class declarations and members.
```ts
function sealed(constructor: Function) {
  Object.seal(constructor);
  Object.seal(constructor.prototype);
}

@sealed
class Greeter {
  greeting: string;
  constructor(message: string) {
    this.greeting = message;
  }
  greet() {
    return "Hello, " + this.greeting;
  }
}
```
- Concept: Organizing code into separate modules with import/export.
Why: Helps in organizing code better, maintaining a cleaner codebase, and managing dependencies more effectively.
```ts
// in file MathLib.ts
export function pi() {
  return 3.14;
}

// in another file
import { pi } from "./MathLib";
console.log(pi());
```
- Concept: Used to group related functionalities together to avoid global scope pollution.
Why: Useful in large applications to maintain a well-organized codebase.
```ts
namespace Geometry {
  export class Rectangle {
    constructor(public width: number, public height: number) {}
    area() {
      return this.width * this.height;
    }
  }
}

const rect = new Geometry.Rectangle(10, 20);
console.log(rect.area());
```
- Type Inference
Concept: TypeScript's ability to deduce types in certain contexts.
Why: Reduces the amount of effort to keep code typed and makes it easier to refactor.
```ts
let x = 3;  // x is inferred to be number
```
-  Type Guards
Concept: Techniques that ensure variables are of a specific type within a scope.
Why: Useful for conditional logic based on types, which can prevent runtime errors.
```ts
function isNumber(x: any): x is number {
  return typeof x === "number";
}

function doSomething(x: number | string) {
  if (isNumber(x)) {
    console.log(x.toFixed(2));
  } else {
    console.log(x.toUpperCase());
  }
}
```
-  Advanced Object Types
Concept: Using mapped types, indexed access types, etc.
Why: Provides more control over the type transformations.
```ts
type Keys = "option1" | "option2";
type Flags = { [K in Keys]: boolean };
```
- Utility Types
Concept: Built-in utility types such as Partial, Readonly, and Record.
Why: Simplifies common type transformations, enhancing code maintainability and development speed.
```ts
interface Todo {
  title: string;
  description: string;
}

function updateTodo(todo: Todo, fieldsToUpdate: Partial<Todo>) {
  return { ...todo, ...fieldsToUpdate };
}

const todo1: Todo = { title: "organize desk", description: "clear clutter" };
const todo2 = updateTodo(todo1, { description: "throw out trash" });
```
- Utility Types
Concept: Built-in utility types such as Partial, Readonly, and Record.
Why: Simplifies common type transformations, enhancing code maintainability and development speed.
```ts
interface Todo {
  title: string;
  description: string;
}

function updateTodo(todo: Todo, fieldsToUpdate: Partial<Todo>) {
  return { ...todo, ...fieldsToUpdate };
}

const todo1: Todo = { title: "organize desk", description: "clear clutter" };
const todo2 = updateTodo(todo1, { description: "throw out trash" });
```
- Any Type
Concept: The any type allows any value, bypassing the type-checking process.
Why: Useful when migrating JavaScript code to TypeScript or when you do not have type information available.
Usage: Use any sparingly, as it defeats the purpose of using TypeScript. It's best used in cases where type information is dynamic or unknown.
``` ts 
let notSure: any = 4;
notSure = "maybe a string instead";
notSure = false; // okay, definitely a boolean
```
-  Void Type
Concept: Used in the return type of functions that do not return a value.
Why: It's helpful for function return type clarity, indicating that a function does not return anything.
Usage: Use void for functions that are used for their side effects and do not return a value.
```ts
function warnUser(): void {
  console.log("This is a warning message");
}
```
- Null and Undefined
Concept: TypeScript supports both null and undefined as types, which by default can be assigned to any other type.
Why: Important for compatibility with JavaScript where null and undefined are common.
- Usage: Useful when you need to explicitly handle absence of values or uninitialized variables.
```ts
let u: undefined = undefined;
let n: null = null;
```
-  Type Assertions
Concept: Similar to type casting in other languages but performed at compile time for type-checking purposes.
Why: Allows you to override the inferred type in a more controlled manner.
- Usage: Use type assertions when you are certain about the type of a variable than TypeScript's type inference is, such as when accessing DOM elements.
```ts
let someValue: any = "this is a string";
let strLength: number = (someValue as string).length;
```
- Conditional Types
Concept: Allows the type system to choose between types based on a condition expressed as a type relationship test.
Why: They add flexibility and power to the type system.
- Usage: Useful in generic programming when the behavior needs to differ based on the types provided as arguments.
```ts
type Check<T> = T extends string ? "String" : "Other";
type Type1 = Check<string>;  // "String"
type Type2 = Check<number>;  // "Other"
```
- Template Literal Types
Concept: Allows strings to be manipulated within the type system.
Why: Enhances the capabilities of types to conform to a specific pattern or value.
- Usage: Great for defining types that must match specific string patterns, commonly used in configuration, routing, etc.
```ts
type World = "world";
type Greeting = `hello ${World}`;
```
- Type Inference with Conditional Types
Concept: Combines type inference in generics with conditional types to dynamically determine types.
Why: Provides powerful tools for building highly dynamic yet type-safe APIs.
- Usage: Ideal for library authors and complex applications where types depend on input types dynamically.
```ts
type ElementType<T> = T extends (infer U)[] ? U : T;
type A = ElementType<number[]>;  // number
```
- Abstract Classes and Methods
Concept: Abstract classes serve as a base class from which other classes may be derived. They may not be instantiated directly. Unlike an interface, an abstract class may contain implementation details for its members.
Why: They provide a template for future derived classes while enforcing certain class-specific methods to be implemented by all subclasses.
- Usage: Use abstract classes when building a set of closely related subclasses which must share a common method implementation, except one or more methods which are class-specific.
```ts
abstract class Animal {
  abstract makeSound(): void;
  move(): void {
    console.log("roaming the earth...");
  }
}
```
- Asynchronous Patterns: Async/Await
Concept: Syntactic sugar for working with promises, making asynchronous code easier to write and read.
Why: Reduces complexity in asynchronous operations, making the code look synchronous and, therefore, easier to understand.
- Usage: Use async/await when dealing with a series of asynchronous operations, such as API calls, that need to be performed in a sequential manner.
```ts
async function getAsyncData() {
  try {
    const response = await fetch("https://api.example.com/data");
    const data = await response.json();
    console.log(data);
  } catch (error) {
    console.error("Error:", error);
  }
}
```
- Using Namespaces for Grouping
Concept: Namespaces are used to group logically related code items together. This helps organize code in a structured format, making maintenance and understanding the codebase easier.
Why: Useful in applications where maintaining global scope becomes critical, and to avoid polluting the global namespace.
- Usage: Ideal for larger TypeScript projects where maintaining a clean global scope is essential. It's particularly useful in environments where multiple scripts co-exist.
```ts
namespace Payment {
  export class Credit {
    constructor(public holderName: string) {}
    authorize() {
      console.log("Credit payment authorized for", this.holderName);
    }
  }

  export class Debit {
    constructor(public holderName: string) {}
    authorize() {
      console.log("Debit payment authorized for", this.holderName);
    }
  }
}

let payment = new Payment.Credit("John Doe");
payment.authorize();
```
- Mixins
Concept: Mixins are a pattern in which one class includes the properties and methods of another class. In TypeScript, mixins can be implemented by extending the functionality of a class through a process that involves copying properties and methods.
Why: Mixins provide a flexible way to compose classes from reusable components.
- Usage: Mixins are best used when you need to combine several behaviors into a single class, which can be especially useful for enhancing classes without the need for a complex inheritance structure.
```ts
class Disposable {
  isDisposed: boolean;
  dispose() {
    this.isDisposed = true;
  }
}

class Activatable {
  isActive: boolean;
  activate() {
    this.isActive = true;
  }
  deactivate() {
    this.isActive = false;
  }
}

class SmartObject implements Disposable, Activatable {
  constructor() {
    setInterval(() => console.log(this.isActive + " : " + this.isDisposed), 500);
  }
  interact() {
    this.activate();
  }

  // Disposable
  isDisposed: boolean = false;
  dispose: () => void;
  // Activatable
  isActive: boolean = false;
  activate: () => void;
  deactivate: () => void;
}
applyMixins(SmartObject, [Disposable, Activatable]);

function applyMixins(derivedCtor: any, baseCtors: any[]) {
  baseCtors.forEach(baseCtor => {
    Object.getOwnPropertyNames(baseCtor.prototype).forEach(name => {
      Object.defineProperty(derivedCtor.prototype, name, Object.getOwnPropertyDescriptor(baseCtor.prototype, name) || Object.create(null));
    });
  });
}

let smartObj = new SmartObject();
setTimeout(() => smartObj.interact(), 1000);
```
- Decorators
Concept: Decorators are a design pattern that is used to separate modification or decoration of a class without modifying the original source code.
Why: Decorators provide a flexible alternative to subclassing for extending functionality.
- Usage: Decorators are commonly used in Angular for defining and modifying classes without altering the original code, making them a powerful feature for library authors and applications.
```ts
function sealed(constructor: Function) {
  Object.seal(constructor);
  Object.seal(constructor.prototype);
}

@sealed
class Greeter {
  greeting: string;
  constructor(message: string) {
    this.greeting = message;
  }
  greet() {
    return "Hello, " + this.greeting;
  }
}
```
-  Parameter Properties
Concept: Parameter properties let you create and initialize a member in one place. It's a shorthand for creating constructor parameters and assigning them to properties with the same name.
Why: Parameter properties reduce boilerplate code, making classes cleaner and easier to read.
- Usage: Use parameter properties to simplify class definitions where you need to pass arguments and assign them as class properties directly.
```ts
class Animal {
  constructor(public name: string) { }
  move(distanceInMeters: number) {
    console.log(`${this.name} moved ${distanceInMeters}m.`);
  }
}
```
- Type Assertions
Concept: Type assertions are a way to tell the TypeScript compiler "trust me, I know what I'm doing." It's like a type cast in other languages, but performs no special checking or restructuring of data.
Why: Sometimes you have better information about the type of a variable than TypeScript, particularly when interacting with libraries and other major abstractions.
- Usage: Use type assertions when you are absolutely certain of the nature of the data at runtime and you need to convince TypeScript of its type, such as when dealing with DOM elements or instances of complex type transformations
```ts
let someValue: any = "this is a string";
let strLength: number = (<string>someValue).length;
```
- Optional Chaining (?.)
Concept: Optional chaining is a newer feature that improves the readability of accessing values through connected objects when it's possible that a reference may be missing.
Why: It eliminates the need for repeated checking and chaining of && to avoid type errors when accessing deeply nested object properties.
- Usage: Optional chaining is particularly useful in dealing with data that might be incomplete or missing, such as data fetched from an API.
```ts
interface User {
  address?: {
    street: string;
    city: string;
    zipCode: string;
  }
}

function getZipCode(user: User) {
  return user.address?.zipCode;
}
```
- Nullish Coalescing Operator (??)
Concept: The nullish coalescing operator (??) is a logical operator that returns its right-hand side operand when its left-hand side operand is null or undefined, and otherwise returns its left-hand side operand.
Why: This is preferable over the logical OR (||) operator in cases where falsy values like 0 or "" (empty string) should be maintained rather than treated as null or undefined.
- Usage: Use the nullish coalescing operator to handle defaults for potentially null or undefined values without the risk of ignoring valid 'falsy' values
```ts
let input: string | undefined;

// Default to 'default' if input is undefined or null, not just falsy
const output: string = input ?? 'default';
```
- Index Signatures
Concept: In cases where you don't know all the names of the properties of an object, but do know the structure, TypeScript lets you specify index signatures to cover all other properties that might exist.
Why: Useful when you are dealing with dynamically named properties that are not statically known.
- Usage: Index signatures are especially useful when you need to describe dictionary patterns, and you know the expected structure of keys and values.
```ts
interface StringArray {
  [index: number]: string;
}

let myArray: StringArray;
myArray = ["Bob", "Fred"];
let myStr: string = myArray[0];
```
- Access Modifiers
Concept: TypeScript supports public, private, and protected modifiers which determine the accessibility of a class member.
Why: Encapsulation and protection of class members from unintended access and modification.
- Usage: Use access modifiers to restrict access to the internals of a class and to manage the class's interface with the outside world.
```ts
class Animal {
  private name: string;

  constructor(theName: string) {
    this.name = theName;
  }

  public move(distanceInMeters: number) {
    console.log(`${this.name} moved ${distanceInMeters}m.`);
  }
}
```
-  Readonly Properties
Concept: Properties that can be set only when an object is created.
Why: Useful for defining properties that should not change after an object's construction.
- Usage: Use readonly when you need to ensure that property values are set at the time of object creation and do not change thereafter.
```ts
class Octopus {
  readonly name: string;
  readonly numberOfLegs: number = 8;

  constructor (theName: string) {
    this.name = theName;
  }
}

let dad = new Octopus("Man with the 8 strong legs");
dad.name = "Man with the 3-piece suit";  // error! name is readonly.
```
- Excess Property Checks
Concept: TypeScript's excess property checks catch the use of unknown properties in object literals passed as arguments.
Why: Prevents subtle bugs that arise from mis-typing property names or expecting properties that are not part of the type definition.
- Usage: Helps maintain a robust interface to functions by ensuring only expected properties are passed in object literals.
```ts
interface SquareConfig {
  color?: string;
  width?: number;
}

function createSquare(config: SquareConfig): { color: string; area: number } {
  // ...
}

let mySquare = createSquare({ colour: "red", width: 100 });  // Error: 'colour' not expected in type 'SquareConfig'
```












## React
- Component & props
  - concept: Building block of a react application
  - why: Components lets you split the UI into independent, reusable peices
  ```jsx
    function Welcome(props){
      return <h1>Hello, {props.name}</h1>
    } 
  ```
- state & lifecycle
  - concept: managing and updating state of a component
  - why: Allows components to manage their own state and lifecycle methods
  ```jsx
    class Clock extends React.Component {
      constructor(props) {
        super(props);
        this.state = { date: new Date() };
      }

      componentDidMount() {
        this.timerID = setInterval(() => this.tick(), 1000);
      }

      componentWillUnmount() {
        clearInterval(this.timerID);
      }

      tick() {
        this.setState({ date: new Date() });
      }

      render() {
        return (
          <div>
            <h1>Hello, world!</h1>
            <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
          </div>
        );
      }
    }

  ```
- Handling events
  - concept: handling events such as `click` `submission`
  - why: Allows interact with the user
  ```jsx
      class Toggle extends React.Component {
      constructor(props) {
        super(props);
        this.state = { isToggleOn: true };

        this.handleClick = this.handleClick.bind(this);
      }

      handleClick() {
        this.setState((state) => ({
          isToggleOn: !state.isToggleOn
        }));
      }

      render() {
        return (
          <button onClick={this.handleClick}>
            {this.state.isToggleOn ? 'ON' : 'OFF'}
          </button>
        );
      }
    }
  ```
- Conditional rendering
  - concept: Rendering component based on condition
  - why: Allows components to render differently based on state props
  ```jsx
    function UserGreeting(props) {
      return <h1>Welcome back!</h1>;
    }

    function GuestGreeting(props) {
      return <h1>Please sign up.</h1>;
    }

    function Greeting(props) {
      const isLoggedIn = props.isLoggedIn;
      if (isLoggedIn) {
        return <UserGreeting />;
      }
      return <GuestGreeting />;
    }

    function Greeting2(props){
      const isLoggedIn = props.isLoggedIn;
      return(
        <div>
          {isLoggeIn ? <UserGreen> : <GuessGreeting>}
        </div>
      )
    }

  ```
  - List and Keys
    - concepts: Rendering list of elements
    - why: Keys React identifies which items have changed, are added, or removed
    ```jsx
        function NumberList(props) {
          const numbers = props.numbers;
          const listItems = numbers.map((number) =>
            <li key={number.toString()}>{number}</li>
          );
          return <ul>{listItems}</ul>;
        }

        const numbers = [1, 2, 3, 4, 5];
        ReactDOM.render(<NumberList numbers={numbers} />, document.getElementById('root'));
    ```
- Forms 
  - concept: form input
  - why: forms are crucial for user to enter input
  ```jsx
      class NameForm extends React.Component {
      constructor(props) {
        super(props);
        this.state = { value: '' };

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
      }

      handleChange(event) {
        this.setState({ value: event.target.value });
      }

      handleSubmit(event) {
        alert('A name was submitted: ' + this.state.value);
        event.preventDefault();
      }

      render() {
        return (
          <form onSubmit={this.handleSubmit}>
            <label>
              Name:
              <input type="text" value={this.state.value} onChange={this.handleChange} />
            </label>
            <input type="submit" value="Submit" />
          </form>
        );
      }
    }

  ```
- Sharing and lifting state
  - concept: Sharing state between components
  - why: helps components communicate and share state
  ```jsx
    function BoilingVerdict(props) {
      if (props.celsius >= 100) {
        return <p>The water would boil.</p>;
      }
      return <p>The water would not boil.</p>;
    }

    class Calculator extends React.Component {
      constructor(props) {
        super(props);
        this.state = { temperature: '' };

        this.handleChange = this.handleChange.bind(this);
      }

      handleChange(e) {
        this.setState({ temperature: e.target.value });
      }

      render() {
        const temperature = this.state.temperature;
        return (
          <fieldset>
            <legend>Enter temperature in Celsius:</legend>
            <input
              value={temperature}
              onChange={this.handleChange} />
            <BoilingVerdict
              celsius={parseFloat(temperature)} />
          </fieldset>
        );
      }
    }

  ```
- Composition vs Inheritance
  - concept: use composition instead of inheritance to reuse code
  why: react encourages us to use composition
  ```jsx
    function FancyBorder(props) {
      return (
        <div className={'FancyBorder FancyBorder-' + props.color}>
          {props.children}
        </div>
      );
    }

    function WelcomeDialog() {
      return (
        <FancyBorder color="blue">
          <h1 className="Dialog-title">Welcome</h1>
          <p className="Dialog-message">Thank you for visiting our spacecraft!</p>
        </FancyBorder>
      );
    }

  ```
- Context APi
  - concept: passing data through the component tree without passing props manualy down at every level
  - useful for gloabal data such as themes and authentification
  ```jsx
    const ThemeContext = React.createContext('light');

      class App extends React.Component {
        render() {
          return (
            <ThemeContext.Provider value="dark">
              <Toolbar />
            </ThemeContext.Provider>
          );
        }
      }

      function Toolbar() {
        return (
          <div>
            <ThemedButton />
          </div>
        );
      }

      class ThemedButton extends React.Component {
        static contextType = ThemeContext;
        render() {
          return <button theme={this.context}>Button</button>;
        }
      }

  ```
- Error Boundaries
  - concept: Catching error in the component tree
  - why: preventing the entire application from crashing due to an error
  ```jsx
    class ErrorBoundary extends React.Component {
      constructor(props) {
        super(props);
        this.state = { hasError: false };
      }

      static getDerivedStateFromError(error) {
        return { hasError: true };
      }

      componentDidCatch(error, errorInfo) {
        // Log error to an error reporting service
      }

      render() {
        if (this.state.hasError) {
          return <h1>Something went wrong.</h1>;
        }

        return this.props.children; 
      }
    }

  ```
- Refs and DOM
  - Concept: Accessing DOM elements directly.
  - Why: Necessary for handling form inputs and animations.
  ```jsx
    class MyComponent extends React.Component {
      constructor(props) {
        super(props);
        this.myRef = React.createRef();
      }

      render() {
        return <div ref={this.myRef} />;
      }
    }

  ```
  















## Redux
















## Git

- Git documentation [Git doc] (https://www.atlassian.com/git/glossary#commands)
- git official documentation [git] (https://git-scm.com/docs)

- `git init ` to initiate a git reppository
- `git clone` is to clone a repository form github or bitbucket
- `git add <file>` add a specific file to the staging area
- `git add .` add all changes to the staging area
- `git status` check the status of 
- `git log` show the commit log
- `git log --oneline -3` show the last 3 commits
- `git commit -m"mesage"` commit a message 
- `git diff` shows changes between commit, commit and working tree
- `git branch` list all the local branches 
- `git checkout <branchName>` checkout from one branch to another
- `git checkout -b <branchName>` branch off the previous branch, meaning create another branch and checkout to it
- `git merge <brnachName>` merges the specified branch hisstory
- `git remote` manages set of tracked repository
- ` git fetch` dowload objects or refs from another repository
- `git pull` fetches from an integrates with another reposotory or a local branch
- `git push ` update remote refs along with associated objects
- `git rebase` replies commit on top of another base tip
- `git tag` create create, list, delete, verifies a list of objects signed with gpg
`git stash` staches the chages in a dirty working directory away
- `git stash apply` apply the changes recorded in a stash to the working directory
- `git rm<fineName>` removes a file from the working directory
- `git mv <oldFile> <newFile>` moves or renames a file, a directory or a symlink
- `git reset` reset current HEAD to the specific state
- `git reset --hard` reset the index and working directory to the state of last commit 
- `git reset --soft` reset the index, bu not the working directory
- `git revert <commit>` revert some existing commit 
- `git cherry-pick <commit>` appky the changes introduced by some existing commits
- `git clean -f` removes untracked files from the working directory
- `git blame <fileName>` shows what revision and author last modified each line of a file
- `git grep <pattern>` prints line matching a pattern
- `git show <object>` show various types of objects
- `git archive` create an archive of files from a name tree
- `git dc` run a number of housekeeping task within the repository
- `git fsck` verifies the connectivity and validity of the objects in the database
- `git reflog` manage reflogs - a nice way to refere back to the old stuff i was working on
- `git shortlog` summarize git log output
- `git describe ` describe a commit using the most tag reachable from it
- ` git diff --staged` shows the changes between the index and the last commit 
- `git merge --no--ff` perfoms a merge with a merge commit
- `git brach -d <branchName>` delete a branch
`git branch -D <branchName>` forcibly deletes a branch
- `git remote -v` displays urls of the remote repository
- `git remote add <name><URL>` add a remote repository
- `git remote rm<name>` removes a remote repostirory
- `git remote rename <oldName> <newName>` rename a remote repository
- `git fetch --all` fetches all remote
- ` git pull origin <branchName>` fetches from and merges with the specified branch
- `git push origin <branchName>` pushes the specified branch to the remote 
- `git push --force` forces the push to the remote repository
- `git stash list` list all stashed changes
-  `git stash pop` applies and remove the lates stash
- `git merge --abort` aborts the conflicts resolutions process
- `git reset --merge` reset the index and update the files in the working tree
- `git cherry <upstream><head>` find commit not merge upstream
- ` git diff <branch1> <branch2>`: Shows changes between two branches.
- `git diff <commit1> <commit2>`: Shows changes between two commits.
- `git diff <commit> <file>`: Shows changes between a commit and a file.
- `git diff <branch> <file>`: Shows changes between a branch and a file.
- `git diff HEAD <file>`: Shows changes between the last commit and a file.
- `git diff --cached`: Shows changes between the staging area and the last commit.
- `git diff --name-only`: Shows only the names of changed files.
- `git diff --name-status`: Shows the names and status of changed files.
- `git diff --check`: Checks for whitespace errors in the changes.
- `git diff --color`: Shows changes with colored output.
- `git diff --stat`: Shows changes with statistics.
- `git diff --shortstat`: Shows only the total number of changed files, insertions, and deletions.
- `git diff --numstat`: Shows the number of added and deleted lines in a numeric format.
- `git diff --word-diff`: Shows changes word by word.
- `git diff --ignore-space-change`: Ignores changes in whitespace.
- `git diff --ignore-all-space`: Ignores all whitespace.
- `git diff --ignore-blank-lines`: Ignores changes whose lines are all blank.
- `git diff --binary`: Shows changes with binary file diff.
- `git log -n <number>`: Shows the last <number> commits.
- `git log --pretty=<format>`: Shows the commit logs in a specified format.
- `git log --abbrev-commit`: Shows the commit logs with abbreviated commit IDs.
- `git log --relative-date`: Shows the commit logs with relative dates.
- `git log --all`: Shows the commit logs of all branches.
- `git log --branches`: Shows the commit logs of all branches.
- `git log --tags`: Shows the commit logs of all tags.
- `git log --remotes`: Shows the commit logs of all remotes.
- `git log --first-parent`: Shows the commit logs of the first parent only.
- `git log --full-history`: Shows the full history of the commit logs.
- `git log --simplify-by-decoration`: Shows the commit logs with simplification.
- `git log --follow <file>`: Shows the commit logs of a specific file.
- `git log --ignore-missing`: Shows the commit logs and ignores missing commits.
- `git log --exclude=<pattern>`: Excludes commits that match the pattern.
- `git log --cherry-mark`: Shows commits with cherry-pick marks.
- `git log --cherry-pick`: Shows commits that are cherry-picked.
`git log --left-right`: Shows the commit logs with left-right comparison.
- `git log --date-order`: Shows the commit logs in date order.
- `git log --author-date-order`: Shows the commit logs in author date order.
- `git log --topo-order`: Shows the commit logs in topological orde
- `git branch` to see the list of the local branch
- ``git branch -v`` to see detail including comments on each branch
- `git branch -r` to see the list of all remote branch









## github & gitdev

``'.'`` use dot to switch a specific repository to gitdev and start coding







## Java


















## Springboot

















## Testing

















## Css

















## Tailwind css

















## Bootstrap
















## Aws















## Markdown file

1. markdown file documentation [.md documentation] (https://www.markdownguide.org/basic-syntax/ )












## VSCode Shortcut












## Inteliji Shortcut














## terminal or cmd 

- script that kills all the running port
- to kill those running port
  - ``lsof -i :6061 -i :6062 -i :6063``
  - ``kill -9 1234 5678 91011`` those are the PID's
```shell
#!/bin/bash

# Array of ports to check and kill
ports=(6061 6062 6063)

for port in "${ports[@]}"
do
echo "Checking port $port..."
pid=$(lsof -ti :$port)
if [ -n "$pid" ]; then
echo "Killing process $pid on port $port"
kill -9 $pid
else
echo "No process found on port $port"
fi
done

```
```shell
chmod +x kill_ports.sh && ./kill_ports.sh
```



- colorzilla extention is a chrome extention to help you get inspired by other website from their color
- [inspiring website design](https://www.entheosweb.com/ideas/creative-wordpress-themes/)
- [configure github for gira](https://support.atlassian.com/jira-software-cloud/docs/reference-issues-in-your-development-work/)