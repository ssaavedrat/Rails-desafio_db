# Desafío - Almacenar Información en una Base de Datos

Este proyecto es parte de un desafío de programación para aplicar los conocimientos adquiridos en Ruby on Rails. El objetivo es desarrollar una aplicación que muestre información sobre películas, series y documentales, almacenando sus datos en una base de datos y permitiendo su visualización y creación a través de formularios.

## Requisitos

- Ruby 2.7.0 o superior
- Rails 6.0 o superior
- PostgreSQL

## Funcionalidades Implementadas

1. Modelos y Controladores: Se han generado los modelos `Movie`, `Serie` y `DocumentaryFilm` con sus respectivos controladores y acciones `index`, `create` y `new`.

2. Vistas: Se han creado vistas para cada acción, incluyendo formularios para la creación de nuevos registros utilizando `form_with`.

3. Redirección: En la acción `create`, la aplicación redirige a la vista `index` si la información se guarda correctamente en la base de datos. En caso contrario, se muestra nuevamente el formulario.

4. Listado de Contenido: Las vistas `index` de cada controlador muestran una lista de todas las películas, series y documentales ingresados en la base de datos.

5. Datos de Ejemplo: El archivo `db/seeds.rb` se ha utilizado para agregar información base a cada modelo, permitiendo una experiencia de demostración.

6. Navegación: Se ha implementado una navegación básica en la aplicación, con enlaces a las vistas `index` de cada controlador.

## Pasos

1. Crea una nueva aplicación Rails con la base de datos PostgreSQL:

    ```bash
    rails new desafio_db --database=postgresql
    ```

2. Agrega las gemas `faker` y `rails_live_reload` al archivo `Gemfile`:

    ```ruby
    gem 'faker'
    gem 'rails_live_reload'
    ```

3. Genera los modelos `Movie`, `Serie` y `DocumentaryFilm`:

    ```bash
    rails g model Movie name synopsis director
    rails g model serie name synopsis director
    rails g model DocumentaryFilm name synopsis director
    ```

4. En caso de ser necesario, agrega una regla de inflexión personalizada para el modelo `serie` en el archivo `config/initializers/inflections.rb`:

    ```ruby
    # config/initializers/inflections.rb
    ActiveSupport::Inflector.inflections(:en) do |inflect|
    inflect.irregular 'serie', 'series'
    end
    ```

5. Crea la base de datos y ejecuta las migraciones:

    ```bash
    rails db:create db:migrate
    ```

6. Genera los controladores y acciones necesarias:

    ```bash
    rails g controller movie index create new
    rails g controller serie index create new
    rails g controller documentary_film index create new
    ```

7. Agrega Bootstrap a las vistas de tu aplicación para un diseño más atractivo.

8. Agrega formularios en las vistas `new.html.erb` de los controladores `movie`, `serie` y `documentary_film` utilizando el helper `form_with`.

9. Agrega validaciones (de front y modelo) a los controladores para asegurarte de que los campos requeridos no estén en blanco.

10. Asegúrate de agregar rutas POST para la acción `create` en los controladores.

11. Edita los controladores para que se comuniquen correctamente con la base de datos y guarden la información ingresada.

12. Poblar la base de datos con datos de ejemplo utilizando el archivo `db/seeds.rb` y ejecutando

    ```bash
    rails db:seed
    ```

## Links de apoyo

- [Convenciones de Nombre](https://medium.com/@decode2018/rails-generator-naming-conventions-c3f7df937033)
- [Impossible camelcase inflections](https://www.bigbinary.com/blog/rails-6-1-raises-error-for-impossible-camelcase-inflections)

## Instrucciones de Uso

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone <nombre_proyecto>.git
    ```

2. Ingresa al directorio del proyecto:

    ```bash
    cd <nombre_proyecto>
    ```

3. Instala las gemas requeridas:

    ```bash
    bundle install
    ```

4. Crea la base de datos, ejecuta las migraciones y carga los datos de ejemplo:

    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```

## Uso

- Inicia el servidor de desarrollo:

    ```bash
    rails server
    ```

- Abre tu navegador y accede a `http://localhost:3000` para ver la aplicación en funcionamiento.

## Contribuciones

Este es un proyecto de desafío y no se aceptan contribuciones externas. Si tienes preguntas o sugerencias, siéntete libre de crear un "Issue" en el repositorio.