# Decorators
{id: decorators}

## Use cases for decorators in Python
{id: decorator-use-cases}
{i: classmethod}
{i: staticmethod}
{i: pytest}

* Common decorators are classmethod() and  staticmethod().
* Flask uses them to mark and configure the routes.
* Pytest uses them to add marks to the tests.

* [functools](https://docs.python.org/3/library/functools.html)

* Logging calls with parameters.
* Logging elapsed time of calls.
* Access control in Django or other web frameworks. (e.g. login required)
* Memoization (caching)
* Retry
* Function timeout
* Locking for thread safety
* [Decorator Library](https://wiki.python.org/moin/PythonDecoratorLibrary)

## Decorarors - Flask
{id: decorators-flask}

* In Flask we use decorators to designate function as "routes".

![](examples/decorators/flask_app.py)

```
FLASK_APP=flask_app flask run
```

## Decorators - Pytest
{id: decorators-pytest}

* In Pytest we can use decorators to add special marks to test functions
* ... or to mark them as fixtures.

![](examples/decorators/test_with_decorator.py)

```
pytest -v
```
## Decorators caching
{id: decorators-cacheing}
{i: cache}
{i: lru_cache}

![](examples/decorators/no_cache.py)
![](examples/decorators/with_lru_cache.py)

## LRU - Least recently used cache
{id: decorators-lru-cache}


* ![Cache replacement policy](https://en.wikipedia.org/wiki/Cache_replacement_policies)

![](examples/decorators/lru_cache_example_1.py)
![](examples/decorators/lru_cache_example_2.py)


## Functool - partial
{id: functool-partial}
{i: partial}

![](examples/decorators/partial.py)

## Function assignment
{id: function-assignment}

{aside}
Before we learn about decorators let's remember that we can assign function names
to other names and then use the new name:
{/aside}

![](examples/decorators/function_assignment.py)
![](examples/decorators/function_assignment.out)

![](examples/decorators/assign_to_sum.py)
![](examples/decorators/assign_print.py)


## A list of functions
{id: list-of-dunctions}

![](examples/decorators/functions_in_list.py)
![](examples/decorators/functions_in_list.out)

## Function inside other function
{id: function-inside-other-function}

{aside}
Let's also remember that we can defind a function inside another function
and then the internally defined function only exists in the scope of the function
where it was defined in. Not outside.
{/aside}

![](examples/decorators/function_in_function.py)
![](examples/decorators/function_in_function.out)

## Decorator
{id: decorator}
{i: @}

* A function that changes the behaviour of other functions.
* The input of a decorator is a function.
* The returned value of a decorator is a modified version of the same function.


```
from some_module import some_decorator

@some_decorator
def f(...):
    ...
```

```
def f(...):
    ...
```

```
f = some_decorator(f)
```





## A recursive Fibonacci
{id: fibo}

![](examples/decorators/fibo.py)


## trace fibo
{id: trace-fibo}

![](examples/decorators/fibotron.py)
![](examples/decorators/fibotron.out)


## tron decorator
{id: decor-tron}

![](examples/decorators/decor.py)


## Decorate with direct call
{id: trace-fibo-direct}

![](examples/decorators/fibotron_direct.py)


## Decorate with parameter
{id: trace-fibo-with-parameter}

![](examples/decorators/fibotron_param.py)
![](examples/decorators/fibotron_param.out)


## Decorator accepting parameter
{id: decor-tron-with-parameter}
![](examples/decorators/decor_param.py)


## Decorate function with any signature
{id: decorate-function-with-any-signature}

* How can we decorate a function that is flexible on the number of arguments?
* Accept `*args` and `**kwargs` and pass them on.

![](examples/decorators/any_func.py)

## Decorate function with any signature - implementation
{id: decorate-function-with-any-signature-implementation}

![](examples/decorators/decor_any.py)
![](examples/decorators/any_func.out)


## Exercise: Logger decorator
{id: exercise-logger-decorator}

* In the previous pages we created a decorator that can decorate arbitrary function logging the call and its parameters.
* Add time measurement to each call to see how long each function took.


## Exercise: decorators decorator
{id: exercise-decorators}


Write a function that gets a functions as attribute and returns a new functions while memoizing (caching) the input/output pairs.
Then write a unit test that checks it.
You probably will need to create a subroutine to be decoratorsd.


* Write tests for the fibonacci functions.
* Implement the decorators decorator for a function with a single parameter.
* Apply the decorator.
* Run the tests again.
* Check the speed differences.
* or decorate with tron to see the calls...


## Solution: Logger decorator
{id: solution-logger-decorator}

![](examples/advanced/logger_decor.py)


## Solution: Logger decorator (testing)
{id: solution-logger-decor-testing}

![](examples/advanced/varargs_decor.py)
![](examples/advanced/varargs_decor.out)


## Solution decorators decorator
{id: solution-decorators}

![](examples/decorators/fibonacci.py)
![](examples/decorators/memoize_nonlocal.py)
![](examples/decorators/memoize_attribute.py)

Before


```
$ time python fibonacci.py 35
9227465

real   0m3.850s
user   0m3.832s
sys    0m0.015s
```

After


```
$ time python fibonacci.py 35
9227465

real   0m0.034s
user   0m0.019s
sys    0m0.014s
```
## Set name of decorated fuction
{id: set-name-of-decorated-function}

![](examples/decorators/deco.py)
![](examples/decorators/deco.out)

