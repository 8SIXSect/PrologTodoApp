:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_cors)).
:- use_module(database).

:- http_handler(root(api), api_response, []).

api_response(_Request) :-
    format('Content-type: text/plain~n'),
    format('Access-Control-Allow-Origin: *~n'),
    format('~n'),
    format('{
        "task": 86
    }').

:- http_server(http_dispatch, [port(8000)]).

