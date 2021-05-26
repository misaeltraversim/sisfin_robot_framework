#Este arquivo contém alguns métodos para o tratamento de dados que são retornados do banco com os caracteres '.0' entre outras máscaras disponíveis.
import string
from _ast import arg
from hmac import digest
from Cython.Plex.Regexps import SwitchCase

#Adiciona 000 a String [arg1 = String a ser modificada] 
def adicionaCaracteres(arg1):
    arg1 = 000 + arg1
    return  arg1

#[arg1 = String a ser modificada]  [arg2 = Quantidade de caracteres a serem retirados do fim]
def removeUltimosCaracteres(arg1,arg2):
    aux = str(arg1)
    aux = aux[: - int(arg2)]
    return  aux

#[arg1 = String a ser modificada]  [arg2 = Quantidade de caracteres a serem retirados do fim]
def removeUltimosCaracteresFloat(arg1,arg2):
    arg1 = arg1[: - float(arg2)]
    return  arg1

#[arg1 = String a ser modificada]  [arg2 = Quantidade de caracteres a serem retirados do início]
def removePrimeirosCaracteres(arg1,arg2):
    arg1 = arg1[int(arg2):]
    return  arg1    

#[arg1 = cpf]  [arg2 = Dígito Verificador]
def formatarMascaraCpf(arg1,arg2):
    cpf = arg1
    cod = removeUltimosCaracteres(arg2,2)
    cpfConcat = cpf + cod
    cpfFull = removePrimeirosCaracteres(cpfConcat,3)
    cpfFormatado = cpfFull[:3] + "." + cpfFull[3:6] + "." + cpfFull[6:9] + "-" + cpfFull[9:]
    return  cpfFormatado

#[arg1 = cpf]  [arg2 = Dígito Verificador]
def formatarMascaraCpfTrim(arg1,arg2):
    cpf = arg1
    cod = arg2
    cpfConcat = cpf + cod
    cpfFull = removePrimeirosCaracteres(cpfConcat,3)
    cpfFormatado = cpfFull[:3] + "." + cpfFull[3:6] + "." + cpfFull[6:9] + "-" + cpfFull[9:]
    return  cpfFormatado

#[arg1 = cnpj]  [arg2 = Dígito Verificador]
def formatarMascaraCnpj(arg1,arg2):
    cnpj= cgcApenasDigitos(arg1,arg2)    
    cnpjFormatado = cnpj[:2] + "." + cnpj[2:5] + "." + cnpj[5:8] + "/" + cnpj[8:12]+ "-"  + cnpj[12:15] 
    #cnpjFormatado = cnpj[:2] + "." + cnpj[3:6] + "." + cnpj[6:10] + "/" + cnpj[10:15]+ "-"
    return  cnpjFormatado

#[arg1 = cnpj]  [arg2 = Dígito Verificador]
def formatarMascaraCnpjTrim(arg1,arg2):
    cnpj= arg1 + arg2    
    cnpjFormatado = cnpj[:2] + "." + cnpj[2:5] + "." + cnpj[5:8] + "/" + cnpj[8:12]+ "-"  + cnpj[12:15] 
    return  cnpjFormatado

#[arg1 = capital]
def formatarMascaraCapital(arg1):
   capital = str(arg1).replace("." ,",")
   capitalFormatado = capital[:2] + "." + capital[2:8]
   return capitalFormatado + "0"     

#[arg1 = data]
def formatarMascaraData(arg1):
   data = removeUltimosCaracteres(arg1,2)
   ano = data[:4]
   mes = data[4:6]
   dia = data[6:8]
#    dia = data[7:8]
   #dataFormatada = capital[:2] + "." + capital[2:8]
   dataFormatada = dia + "/" +  mes + "/" + ano
   return dataFormatada   
#[arg1 = data]
def formatarMascaraDataTrim(arg1):
    if arg1 == '0':
        dataFormatada = "00/00/0000" 
    else:          
        ano = arg1[:4]
        mes = arg1[4:6]
        dia = arg1[6:8]
        dataFormatada = dia + "/" +  mes + "/" + ano       
    return dataFormatada   

#[arg1 = data]
def formatarMascaraDataTrimChecaZero(arg1):
    if arg1 == '0':
        dataFormatada = "00/00/0000" 
    else:          
        ano = arg1[:4]
        mes = arg1[4:6]
        dia = arg1[6:8]
        dataFormatada = dia + "/" +  mes + "/" + ano             
    return dataFormatada   


#[arg1 = cgc]  [arg2 = Dígito Verificador]
def cgcApenasDigitos(arg1,arg2):
    cgc = removeUltimosCaracteres(arg1,2)
    cod = removeUltimosCaracteres(arg2,2)
    cgcConcat = cgc + cod
    return  cgcConcat

#[arg1 = cnpj] 
def apenasDigitos(arg1):
    arg = removeUltimosCaracteres(arg1,2)
    return  arg

#[arg1 = cpfConjuge]  [arg2 = Dígito Verificador]
def formatarMascaraCpfConjuge(arg1,arg2):
    cpf = removeUltimosCaracteres(arg1,2)
    cod = removeUltimosCaracteres(arg2,2)
    cpfConcat = cpf + cod
    cpfConjugeFormatado = cpfConcat[:3] + "." + cpfConcat[3:6] + "." + cpfConcat[6:9] + " - " + cpfConcat[9:]
    return  cpfConjugeFormatado

#[arg1 = cpf]  [arg2 = Dígito Verificador]
def formatarCpfApenasDigitos(arg1,arg2):
    cpf = arg1
    cod = removeUltimosCaracteres(arg2,2)
    cpfConcat = cpf + cod
    return  cpfConcat

#[arg1 = cpf formatado com 000+ digitoVerificador Ex:00088289737149]
def formatarCpfParametroBanco(arg1):
    cpfBd = removePrimeirosCaracteres(arg1,3)
    return  cpfBd

#[arg1 = codigo]  [arg2 = Dígito codigo]
def formatarMascaraCodigoCliente(arg1,arg2):
    cod = removeUltimosCaracteres(arg1,2)
    digCod = removeUltimosCaracteres(arg2,2)
    codConcat = cod + '-' + digCod
    return  codConcat

#[arg1 = codigo]  [arg2 = Dígito codigo]
def formatarMascaraCodigoClienteTrim(arg1,arg2):
    codConcat = arg1 + '-' + arg2
    return  codConcat

#[arg1 = codigo]  [arg2 = Dígito codigo]
def formatarMascaraCodigoClienteTrimTelaEspaco(arg1,arg2):
    codConcat = arg1 + ' - ' + arg2
    return  codConcat

#[arg1 = cnpj]  [arg2 = Dígito Verificador]
def formatarMascaraCodigoClientePj(arg1,arg2):
    cod = removeUltimosCaracteres(arg1,2)
    digCod = removeUltimosCaracteres(arg2,2)
    codConcat = cod + '-' + digCod
    return  codConcat

#[arg1 = agencia]  
def formatarMascaraAgencia(arg1):
    agen = removeUltimosCaracteres(str(arg1),2)
    agenFor = removePrimeirosCaracteres(agen,1)
    return  agenFor

#[arg1 = agencia]  
def formatarMascaraAgenciaStringLimpa(arg1):
    agenFor = removePrimeirosCaracteres(arg1,1)
    return  agenFor

#[arg1 = agencia]  
def formatarMascaraCodMunicipio(arg1):
    codMun = removeUltimosCaracteres(str(arg1),2)
    return  codMun


#[arg1 = cep] 
def formatarMascaraCep(arg1):
    cep= removeUltimosCaracteres(arg1,2)
    cepSize= len(cep)
    if cepSize >= 4:
        cepFormatado =  cep[:1] + "-" + cep[1:4]
    if cepSize >= 5:
        cepFormatado = "000" + cep[:2] + "-" + cep[2:5]
    if cepSize >= 6:
        cepFormatado = "00" + cep[:3] + "-" + cep[3:6]
    if cepSize >= 7:
        cepFormatado =  "0" + cep[:4] + "-" + cep[4:7]
    if cepSize >= 8:
        cepFormatado =   cep[:5] + "-" + cep[5:8]        
    return  cepFormatado


#[arg1 = cep] 
def formatarMascaraCepTrim(arg1):
    cepFormatado =  arg1[:1] + "-" + arg1[1:4]
    cepSize= len(arg1)
    if cepSize >= 4:
        cepFormatado =  arg1[:1] + "-" + arg1[1:4]
    if cepSize >= 5:
        cepFormatado = "000" + arg1[:2] + "-" + arg1[2:5]
    if cepSize >= 6:
        cepFormatado = "00" + arg1[:3] + "-" + arg1[3:6]
    if cepSize >= 7:
        cepFormatado =  "0" + arg1[:4] + "-" + arg1[4:7]
    if cepSize >= 8:
        cepFormatado =   arg1[:5] + "-" + arg1[5:8]            
    return  cepFormatado


#[arg1 = cep] 
def formatarMascaraCepTrimChecaZero(arg1):
    cepFormatado =  arg1[:1] + "-" + arg1[1:4]
    cepSize= len(arg1)
    if cepSize >= 4:
        cepFormatado =  arg1[:1] + "-" + arg1[1:4]
    if cepSize >= 5:
        cepFormatado = "000" + arg1[:2] + "-" + arg1[2:5]
    if cepSize >= 6:
        cepFormatado = "00" + arg1[:3] + "-" + arg1[3:6]
    if cepSize >= 7:
        cepFormatado =  "0" + arg1[:4] + "-" + arg1[4:7]
    if cepSize >= 8:
        cepFormatado =   arg1[:5] + "-" + arg1[5:8]  
                
    if arg1 == 0:
       cepFormatado = cepFormatado
    else:
       cepFormatado = "00000-000"                    
    return  cepFormatado

#[arg1 = cep] 
def formatarMascaraCepTrim(arg1):
    cepFormatado =  arg1[:1] + "-" + arg1[1:4]
    cepSize= len(arg1)
    if cepSize >= 4:
        cepFormatado =  arg1[:1] + "-" + arg1[1:4]
    if cepSize >= 5:
        cepFormatado = "000" + arg1[:2] + "-" + arg1[2:5]
    if cepSize >= 6:
        cepFormatado = "00" + arg1[:3] + "-" + arg1[3:6]
    if cepSize >= 7:
        cepFormatado =  "0" + arg1[:4] + "-" + arg1[4:7]
    if cepSize >= 8:
        cepFormatado =   arg1[:5] + "-" + arg1[5:8]          
    return  cepFormatado


#[arg1 = codigo]  [arg2 = Dígito codigo]
def formatarCodigoClienteCompletaZeros(arg1,arg2):
    cod = removeUltimosCaracteres(arg1,2)
    digCod = removeUltimosCaracteres(arg2,2)
    codSize= len(cod)
    if codSize >= 3:
        codConcat = "00000" + cod + '-' + digCod
    if codSize >= 4:
        codConcat = "0000" + cod + '-' + digCod
    if codSize >= 5:
        codConcat = "000" + cod + '-' + digCod
    if codSize >= 6:
        codConcat = "00" + cod + '-' + digCod
    if codSize >= 7:
        codConcat = "0" + cod + '-' + digCod        
    return  codConcat


#[arg1 = data]
def formatarMascaraHora(arg1):
   arg    = removeUltimosCaracteres(arg1,2)
   hora    = arg[:2]
   minuto  = arg[2:4]
   segundo = arg[4:6]
   horaFormatada = hora + ":" +  minuto + ":" + segundo
   return horaFormatada   
def formatarMascaraData(arg1):
   dia = arg1[:2]
   mes = arg1[2:4]
   ano = arg1[4:9]
   dataFormatada = dia + "/" +  mes + "/" + ano
   return dataFormatada
def formatarMascaraDataFloat(arg1):
   data = removeUltimosCaracteres(arg1,2)
   dia = data[:2]
   mes = data[2:4]
   ano = data[4:9]
   dataFormatada = dia + "/" +  mes + "/" + ano
   return dataFormatada

def formatarFaixaDePortes(arg):
    argformatado = arg[:3] + "." + arg[3:6] + "," + arg[6:8]
    return argformatado 
    
def inverterData(arg):
    dia = arg[6:8]
    mes = arg[4:6]
    ano = arg[:4]
    dataInvertida = dia + mes + ano
    return dataInvertida

def inverterDataAm(arg):
    dia = arg[6:8]
    mes = arg[4:6]
    ano = arg[:4]
    dataAmericana = ano + mes + dia
    return dataAmericana


def formatarMascaraDataInvertida(arg):
    if (len(str(arg)) == 10):
    	data = removeUltimosCaracteres(arg,2)
    else:
    	data = arg	
    dia = data[6:8]
    mes = data[4:6]
    ano = data[:4]
    dataFormatada = dia + "/" +  mes + "/" + ano
    return dataFormatada

def cpfCompleto(cpf,dig):
    completo = cpf + " " + dig
    return completo

def formatarDecimal(arg1):
    resposta = arg1.strip()
    #print(len(resposta))
    if (len(resposta) < 7):
        resposta = resposta.replace(".",",")
    elif (len(resposta) == 7):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:1] + "." + resposta[1:]
    elif (len(resposta) == 8):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:2] + "." + resposta[2:]
    elif (len(resposta) == 9):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:3] + "." + resposta[3:]
    elif (len(resposta) == 10):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:1] + "." + resposta[1:4] + "." + resposta[4:]
    elif (len(resposta) == 11):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:2] + "." + resposta[2:5] + "." + resposta[5:]        
    elif (len(resposta) == 12):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:3] + "." + resposta[3:6] + "." + resposta[6:]  
    elif (len(resposta) == 13):
        resposta = resposta.replace(".",",")
        resposta = resposta[0:1] + "." + resposta[1:4] + "." + resposta[4:7] + "." + resposta[7:]        
    return resposta

def formatarQtDreg(arg1):
    float = arg1
    FloatFormatado = float[0:1] + "." + float[1:4] + "." + float[4:7]
    return  FloatFormatado
    
#[arg1 = data]
def formatarMascaraDataNormal(arg1):
   data = removeUltimosCaracteres(arg1,2)
   ano = data[:4]
   mes = data[4:6]
   dia = data[6:8]
   dataFormatada = dia + mes + ano
   return dataFormatada  
   
def formatarCnpjSemMascaraSemDv(arg1):
	cpf_cpnj = removeUltimosCaracteres(arg1,2)
	cpf_cpnj = cpf_cpnj.rjust(15, '0')
	print (cpf_cpnj)
	return  cpf_cpnj	   

def replacePontoPorVirgula(arg1):
   aux = str(arg1).replace(".",",")
   return aux   
   
def formatarDecimalFloat(arg1):
    resposta = str(arg1)
    resposta = resposta.replace(".",",")
    tam = len(resposta)
    if (tam == 7):
    	resposta = resposta[0:1] + "." + resposta[1:3] + resposta[3:]
    elif (tam == 8):
        resposta = resposta[0:2] + "." + resposta[2:5] + resposta[5:]
    elif (tam == 9):
        resposta = resposta[0:3] + "." + resposta[3:6] + resposta[6:]
    elif (tam == 10):
        resposta = resposta[0:1] + "." + resposta[1:4] + "." + resposta[4:7] + resposta[7:]        
    elif (tam == 11):
        resposta = resposta[0:2] + "." + resposta[2:5] + "." + resposta[5:8] + resposta[8:]  
    elif (tam == 12):
        resposta = resposta[0:3] + "." + resposta[3:6] + "." + resposta[6:9] + resposta[9:]  
    elif (tam == 13):
        resposta = resposta[0:1] + "." + resposta[1:4] + "." + resposta[4:6] + "." + resposta[6:9] + resposta[9:]          
    return resposta   
    
def completeZeroToLeft(arg1,arg2):
	cod = removeUltimosCaracteres(arg1,2)
	cod = cod.rjust(arg2,'0')
	return cod     