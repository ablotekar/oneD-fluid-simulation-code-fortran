# Two component full fluid code

In this simulation code both component of the plasma system are
consider to be fluid. Hence, ion and electron both are discribed 
by the fluid equation. 

## How to compile and run the code 

To comile code use following command. Before compile chage the compiler name
in **makefile**.

.. code-block:: bash
        make

or 

.. code-block:: bash
        make -f makefile



The compile code can be directly run by command 
.. code-block:: bash
        ./RUN


or can be run in the background. To run code in background use follwing command
''
bash Job_submit_on_pc
''

as job succesfully run in background scritp will display process id. The process id is 
important to kill the code. The process id also printed in **process_ID.log** file with time 
stamp.

To kill running code 
'''
kill (process id)
'''

