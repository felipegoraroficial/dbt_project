{{
    config(
        materialized = 'table',
        pre_hook=[

            "{{ revoke_usage_schema() }}",
            "{{ revoke_select_tabela_produto() }}"
        ],
        post_hook=[

            "{{ grant_usage_schema() }}",
            "{{ grant_select_tabela_produto() }}"
        ]
    )
}}

SELECT 
    id,    -- Seleciona a coluna 'id'
    titulo -- Seleciona a coluna 'titulo'

<<<<<<< HEAD
FROM {{ source("nintendo_projeto_prd", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_prd"
ORDER BY id        -- Ordena os resultados pela coluna 'id'
=======
FROM {{ source("nintendo_projeto", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto"
ORDER BY id        -- Ordena os resultados pela coluna 'id'
>>>>>>> c85854ccd91e0d4bfd04d08509749845fd034528
