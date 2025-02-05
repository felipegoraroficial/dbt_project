{{
    config(
        materialized = 'table',
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

FROM {{ source("nintendo_projeto_dev", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_dev"
ORDER BY preco_promo ASC -- Ordena os resultados pela coluna 'preco_promo' em ordem ascendente