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

def save(dataframe, filename):
    """
    Guarda un DataFrame en un archivo CSV sin incluir el índice.

    Args:
        dataframe (pandas.DataFrame): El DataFrame que guardas.
        filename (str): El nombre del archivo CSV donde quieras guardar el DataFrame.
    """
    return dataframe.to_csv(filename, index=False)

def optim(df):

    '''
    Optimiza los datos de un dataframe.

    Args:
        dataframe(pandas.DataFrame): El DataFrame que transofrmas
    '''
    int_columnas = df.select_dtypes(include=['int']).columns
    df[int_columnas] = df[int_columnas].apply(pd.to_numeric, downcast='integer')

    float_columnas = df.select_dtypes(include=['float']).columns
    df[float_columnas] = df[float_columnas].apply(pd.to_numeric, downcast='float')

    object_columnas = df.select_dtypes(include=['object']).columns
    df[object_columnas] = df[object_columnas].astype('category')

    datetime_columnas = df.select_dtypes(include=['datetime']).columns
    df[datetime_columnas] = df[datetime_columnas].apply(pd.to_datetime, errors='coerce')

    return df

