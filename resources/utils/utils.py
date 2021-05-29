#Este arquivo contém alguns métodos gerais de auxílio nos testes
import string
import gc
import sys
from js2py.internals.simplex import null
from cgi import log

#Compara dois valores
def comparaValores(arg1,arg2):
    if  removeEspaco(arg1) == removeEspaco(arg2): 
        return True
    else:
        return  False

#Exclúi elemento de uma lista: (lista , posição do elemento)
def retiraElementoLista(arg1,arg2):
    del(arg1[int(arg2)])
    return  arg1

#Destruir Objeto
def assassinarObj(arg1):
    arg1 = None
    gc.collect()
    
def auto_str(cls):
        def __str__(self):
            return '%s(%s)' % ( type(self).__name__, ', '.join('%s=%s' % item for item in vars(self).items())        )
        cls.__str__ = __str__
        return cls

#Adicionar zero a esqueda do numero
def adicionarZeroEsquerda(arg1,arg2):    
    aux = '' 
    for x in arg2:
        aux += '0'
    aux += str(arg1)    
    return  aux


#valida se objeto é vazio
def isEmpty(arg1):
    a=[] # Empty lists evaluate to False
    if not a:
        print ("list is empty")
    else:
        print ("list is not empty")

    return False    
        
def removeEspaco(instring):
    return instring.strip()

