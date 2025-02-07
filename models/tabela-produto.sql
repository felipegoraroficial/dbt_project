{{
    config(
        materialized = 'table',
    )
}}

SELECT 
    id,    -- Seleciona a coluna 'id'
    titulo -- Seleciona a coluna 'titulo'


FROM {{ source("nintendo_projeto", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto"
ORDER BY id        -- Ordena os resultados pela coluna 'id'
