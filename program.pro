
:- op(100, yfy, prog).
:- op(100, fx, [ class, get, set, def, new, property ]).

:- op(1100, xf, ';').


test prog {

testing = class {
    init = def (name) -> {
        self->name = name;
    };
    name = property {
        get {
            self->name;
        };
    };
};

test = def {
    o = new testing("test");
    print(o->name);
};

}.

printing prog {
   print("hi");
   print("yo");
}.



eval(print(X), Ctx, Ctx) :- write(X).

eval( Cmd ; NS , Context, New) :- 
    eval(Cmd, Context, Mid), eval(NS, Mid, New).
eval( Cmd ; , Context, New) :- 
    eval(Cmd, Context, New).

eval(Prog) :- Prog prog { NS } , eval(NS, a, a ).
:- eval(printing).
