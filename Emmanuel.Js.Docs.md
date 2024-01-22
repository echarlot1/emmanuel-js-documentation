# This markdown file is combination of javascript, React, git, aws documentation

## Javascript


## React

1. Render random jsx words from an Array
    1. ```jsx
        const wordsArray = ["word1", "word2"]
        function genRandomInt(max) {
            return Math.floor(Math.random() * (max + 1));
        }

        function Header() {
                return (
                    <header>
                    <img src={reactImg} alt="Stylized atom" />
                    <h1>React Essentials</h1>
                    <p>
                        {wordsArray[getRandomInt(wordsArray.length)]} React concepts you will need for almost any app you are
                        going to build!
                    </p>
                    </header>
                );
        }
    ```
2. Props
    1. How props works
    2. ```jsx
        // Child component that, where we can get access to the data that is defined in the parent component
        function CoreConcept(props) {
            return (
                <li>
                <img src={props.image} alt={props.title} />
                <h3>{props.title}</h3>
                <p>{props.description}</p>
                </li>
            );
            }

        // Parent component (App.js), where the child component is rendered with different data   
          <h2>Core Concepts</h2>
          <ul>
            <CoreConcept
              title="Components"
              description="The core UI building block."
              image={componentsImg}
            />
            <CoreConcept title="Props" />
            <CoreConcept />
            <CoreConcept />
          </ul>
    ```
    Another alternative for accepting the props as objects. it's called object destructuring
    ```jsx
        function CoreConcept({image, title, description})
    ```

    3. Another way of dealing with props data is.
        1. if having an array of object to hold the data That are going to be passed to the parent component ```App.js```
         ```jsx
            const   CORE_CONCEPTS = [
                {
                image: reactImg,
                title: "title1",
                description: "description1"
                },
                {
                image: img2,
                title: "title2",
                description: "description2"
                }
                ]
        ```
        2. We have our Child component ```CoreConcept.jsx```
        ```jsx
            const CoreConcept = ({image, title, description}) =>{
                return(
                <li>
                    <img src={image} alt={title} />
                    <h3>{title}</h3>
                    <p>{description}</p>
                </li>
                )
                }
        ```
        3. We can use Spread operator to render the data in the parent component ```App.jsx```
        ```jsx
            <section id="core-concept">
                /*
                    one way of pasing the data in the parent component
                */
                <CoreConcept
                    image={img2}
                    title="Title1"
                    description="Description1"
                />

                /*
                    grabbing the second object from the array then display its properties. becuase Same properties repeat in the
                    passing child componet we can use spread operato
                */
                <CoreConcept
                    image={CORE_CONCEPTS[2].image}
                    title={CORE_CONCEPTS[2].title}
                    description={CORE_CONCEPTS[2].description}
                    />

                    /*
                        Using Spread operator. This is possible because {image, title, description} are the same in the data.
                        {...CORE_CONCEPTS[1]} grab the second object then display its properties
                    */
                <CoreConcept
                    {...CORE_CONCEPTS[1]}
                />
            </section>
        ```

## Redux


## Git

1. Git documentation [Git doc] (https://www.atlassian.com/git/glossary#commands)
2. git official documentation [git] (https://git-scm.com/docs)
3. setup github ssh (https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent )


## Testing

## Css

## Tailwind css


## Bootstrap



## Aws


## Java


## Springboot


## Markdown file

1. markdown file documentation [.md documentation] (https://www.markdownguide.org/basic-syntax/ )



## Shortcut


