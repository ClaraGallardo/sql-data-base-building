import pandas as pd

def abrir_csv(ruta):
    """
    Abre un archivo CSV y lo devuelve como un DataFrame.

    Args:
        archivo: La ruta del archivo CSV.

    Returns:
        Un DataFrame con los datos del archivo CSV.

        Ejemplo de uso:

        ruta = "../data/actor.csv"
        df = abrir_csv(ruta)
    """
    
    return pd.read_csv(ruta, encoding='latin1')


def verificar_nulos(df):
    '''
    Verifica que los nombres de las columnas de un DataFrame no contengan nulos ni Nan.

    Args:
        df (pd.DataFrame): El DataFrame cuyos valores se van a comprobar.

    Returns:
        Devuelve la cantidad de valores nulos o Nan que tiene el DataFrame
    
    '''
    
    null = df.isnull().sum()
    nan = df.isna().sum()

    return pd.DataFrame({'Valores Nulos': null,'Valores Nan': nan})

def titulos (df):
    '''
    Cambia los títulos de las columna , quita las barra baja y pone espacio, además pone en mayúscula la primera letra de cada palabra

    Args:
        df (pd.DataFrame): El DataFrame cuyos valores se van a comprobar.

    Returns:
        Devuelve la cantidad de valores nulos o Nan que tiene el DataFrame
    
    '''
    return df.columns.str.replace('_',' ').str.title()

def duplicados (df):
    '''
    Verifica que los valores no estén duplicados.

    Args:
        df (pd.DataFrame): El DataFrame cuyos valores se van a comprobar.

    Returns:
        Devuelve la cantidad de valores duplicados que tiene el DataFrame
    '''
    return df.duplicated().sum()

def convertir_fecha(df):
    '''
    Combierte los valores de un dataframe a data time,siempre que este en el formato correcto.

    Args:
        df (pd.DataFrame): El DataFrame cuyos valores se van a cambiar.
        column_name : el nombre de la columna que queremos transformar.
        date_format : se debe aportar el formato de la fecha de la siguente manera.

    Returns:
        Devuelve la cantidad de valores duplicados que tiene el DataFrame
    
    '''
    
    df['Last Update'] = pd.to_datetime(df['Last Update'], format="%Y-%m-%d %H:%M:%S")
    return df

