{{
    config(
        materialized = 'table',
        pre_hook=[
            "{{ revoke_usage_schema() }}",
            "{{ revoke_select_tabela_preco() }}"
        ],
        post_hook=[
            "{{ grant_usage_schema() }}",
            "{{ grant_select_tabela_preco() }}"
        ]
    )
}}

SELECT 
    id,              -- Seleciona a coluna 'id'
    moeda,           -- Seleciona a coluna 'moeda'
    condition_promo, -- Seleciona a coluna 'condition_promo'
    preco_promo,     -- Seleciona a coluna 'preco_promo'
    parcelado,       -- Seleciona a coluna 'parcelado'
    file_date        -- Seleciona a coluna 'file_date'

<<<<<<< HEAD
FROM {{ source("nintendo_projeto_prd", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_prd"
=======
FROM {{ source("nintendo_projeto", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto"
>>>>>>> c85854ccd91e0d4bfd04d08509749845fd034528
ORDER BY preco_promo ASC -- Ordena os resultados pela coluna 'preco_promo' em ordem ascendente