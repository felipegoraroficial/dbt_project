SELECT 
    id,              -- Seleciona a coluna 'id'
    moeda,           -- Seleciona a coluna 'moeda'
    condition_promo, -- Seleciona a coluna 'condition_promo'
    preco_promo,     -- Seleciona a coluna 'preco_promo'
    parcelado        -- Seleciona a coluna 'parcelado'

FROM {{ source("nintendo_projeto_prd", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_prd"
ORDER BY preco_promo ASC -- Ordena os resultados pela coluna 'preco_promo' em ordem ascendente