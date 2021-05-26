*** Settings ***
Variables                       properties.py
Library                         DatabaseLibrary
Library                         Collections
Library                         String

*** Variables ***


*** Keywords ***

Conectar BD ALTA
    Connect To Database Using Custom Params  jaydebeapi  'com.ibm.db2.jcc.DB2Driver', 'jdbc:db2://${properties.db2_host}:${properties.db2_port}/${properties.db2_name}', [ '${properties.db2_username}', '${properties.db2_password}']

Desconectar BD
    Disconnect from Database
