
/*
  =============================================================================
  TIPOS DE DADOS EM BANCO DE DADOS (GUIA RÁPIDO)
  =============================================================================

  --- NUMÉRICOS ---
  INT ou INTEGER    -> Números inteiros (ex: 1, 10, -500).
  BIGINT            -> Inteiros para números gigantes (ex: IDs globais).
  DECIMAL(p,s)      -> Números exatos com vírgula. Ex: DECIMAL(10,2) para R$ 99,90.
  FLOAT / REAL      -> Números decimais aproximados (usados em cálculos científicos).

  --- TEXTO (STRINGS) ---
  CHAR(n)           -> Texto de tamanho fixo. Sempre ocupa 'n' espaços. (Ex: Sigla UF 'SP').
  VARCHAR(n)        -> Texto de tamanho variável até 'n'. Economiza espaço no disco.
  TEXT              -> Texto longo e sem limite definido (ideal para descrições ou posts).

  --- DATA E HORA ---
  DATE              -> Apenas a data (AAAA-MM-DD).
  TIME              -> Apenas a hora (HH:MM:SS).
  TIMESTAMP         -> Data e hora juntos (muito usado para "Criado em" / "Atualizado em").
  BOOLEAN           -> Verdadeiro (TRUE/1) ou Falso (FALSE/0).

  --- ESPECIAIS (AVANÇADOS) ---
  JSON / JSONB      -> Armazena objetos JSON (muito usado para dados semiestruturados).
  UUID              -> Identificador Único Universal (ex: '550e8400-e29b-41d4-a716...').
  BLOB / BYTEA      -> Dados binários (ex: para salvar uma imagem ou arquivo PDF).

  =============================================================================
  DICA DE QUALIDADE:
  - Use sempre VARCHAR em vez de CHAR, a menos que o dado tenha TAMANHO FIXO (como CPF).
  - Use DECIMAL para dinheiro (Money). Nunca use FLOAT para valores financeiros!
  =============================================================================

  EXISTEM MAIS TIPOS DE DADOS, PORÉM ESSES ENGLOBAM MAIOR PARTE DOS TIPOS DADOS PARA ESTUDO.
*/
