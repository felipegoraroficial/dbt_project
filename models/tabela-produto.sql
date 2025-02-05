{{
    config(
        materialized = 'table',
        post_hook=[

            "{{ grant_usage_schema() }}",
            "{{ grant_select_tabela_produto() }}"
        ]
    )
}}

SELECT 
    id,    -- Seleciona a coluna 'id'
    titulo -- Seleciona a coluna 'titulo'

FROM {{ source("nintendo_projeto_dev", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_dev"
ORDER BY id        -- Ordena os resultados pela coluna 'id'
