from ariadne import QueryType, make_executable_schema
from ariadne.asgi import GraphQL
from starlette.applications import Starlette

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


if __name__ == '__main__':
    main()