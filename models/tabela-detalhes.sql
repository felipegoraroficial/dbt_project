{{
    config(
        materialized = 'table',
        pre_hook=[
            "{{ revoke_usage_schema() }}",
            "{{ revoke_select_tabela_detalhes() }}"
        ],
        post_hook=[
            "{{ grant_usage_schema() }}",
            "{{ grant_select_tabela_detalhes() }}"
        ]
    )
}}

SELECT 
    id,              -- Seleciona a coluna 'id'
    link,            -- Seleciona a coluna 'link'
    status,          -- Seleciona a coluna 'status'
    origem,          -- Seleciona a coluna 'origem'
    memoria,         -- Seleciona a coluna 'memoria'
    oled,            -- Seleciona a coluna 'oled'
    lite             -- Seleciona a coluna 'lite'

<<<<<<< HEAD
FROM {{ source("nintendo_projeto_prd", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_prd"
=======
FROM {{ source("nintendo_projeto", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto"
>>>>>>> c85854ccd91e0d4bfd04d08509749845fd034528
ORDER BY id        -- Ordena os resultados pela coluna 'id'