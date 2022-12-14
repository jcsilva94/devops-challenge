from ariadne import QueryType, make_executable_schema
from ariadne.asgi import GraphQL
from starlette.applications import Starlette
import uvicorn

def main():
    type_defs = """
        type Query {
            hello: String!
        }
    """

    query = QueryType()


    @query.field("hello")
    def resolve_hello(*_):
        return "world"


    # Create executable schema instance
    schema = make_executable_schema(type_defs, query)

    app = Starlette(debug=True)
    app.mount("/graphql", GraphQL(schema, debug=True))

    uvicorn.run(
        app=app,
        port=8080,
        host='0.0.0.0'
    )


if __name__ == '__main__':
    main()