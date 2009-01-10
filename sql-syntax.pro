:- op(1080, fx, [select, create]).
:- op(1070, yfy, where).
:- op(1060, yfy, from).
:- op( 900, yfy, join).
:- op( 950, yfy, [as, of]).
:- op( 850, yfy, [on, references]).
:- op( 800, xfx, [or, and]).
:- op( 100, yfy, like).
:- op( 1000, fx, [table, index]).

create table users as (
    id of int,
    name of string(30),
    id is primary,
    name is unique
    ).

create table user_permissions as (
    user_id of int references users(id),
    permission_id of int references permissions(id),
    {user_id, permission_id} is primary
    ).

select
    users(id, name),
    permission(name)
from
    users
    join user_permissions
        on user(id) = user_permissions(user_id)
    join permissions
        on permissions(id) = user_permissions(permission_id)
where
    users(id) = 1
    or users(name) like 'M?yer'.



select now as time.
select 1.

:- (select X from Y where Z),
    write_canonical(X),nl,
    write_canonical(Y),nl,
    write_canonical(Z),nl.

:- write_canonical(select a from b where c).

