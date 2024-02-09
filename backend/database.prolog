:- module(database,
          [ attach_user_db/1,
            add_task/2
          ]).
:- use_module(library(persistency)).

:- persistent
    task(description:string).

attach_user_db(File) :-
    db_attach(File, []).


add_task(Name, Role) :-
    assert_user_role(Name, Role).

