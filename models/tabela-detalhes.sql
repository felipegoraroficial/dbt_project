
SELECT 
    id,              -- Seleciona a coluna 'id'
    link,            -- Seleciona a coluna 'link'
    file_date,       -- Seleciona a coluna 'file_date'
    status,          -- Seleciona a coluna 'status'
    origem,          -- Seleciona a coluna 'origem'
    memoria,         -- Seleciona a coluna 'memoria'
    oled,            -- Seleciona a coluna 'oled'
    lite             -- Seleciona a coluna 'lite'

FROM {{ source("nintendo_projeto_dev", "nintendo-bigtable") }} -- Fonte de dados: tabela "nintendo-bigtable" no projeto "nintendo_projeto_dev"
ORDER BY id        -- Ordena os resultados pela coluna 'id'