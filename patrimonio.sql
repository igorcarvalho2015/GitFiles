CREATE TABLE IF NOT EXISTS iventario (
  id_pat int(11) NOT NULL AUTO_INCREMENT,
  patrimonio text,
  serie text NOT NULL,
  produto text NOT NULL,
  fabricante text NOT NULL,
  modelo text NOT NULL,
  descricao text NOT NULL,
  estado text NOT NULL,
  imei text NOT NULL,
  origem text NOT NULL,
  data text NOT NULL,
  responsavel text NOT NULL,
  cargo text NOT NULL,
  PRIMARY KEY (id_pat)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

INSERT INTO iventario (id_pat, patrimonio, serie, produto, fabricante, modelo, descricao, estado, imei, origem, data, responsavel, cargo) VALUES
(1, 'NTB0000001', '', 'NOTEBOOK', 'LG', 'P430 3453', 'COREI3 - HD 160GB - 8GB DE MEM�RIA', 'BOM', '-', 'BRASILIA', '11/09/2013', '', ''),
(2, 'NTB0000002', '5W5X5W1', 'NOTEBOOK', 'DELL', 'VOSTRO 3560', 'INTEL CORE I7 HD 700GB 6GB DE MEM�RIA WINDOWS 7 X64', 'BOM', '-', 'BRASILIA', '12/09/2013', 'RAFAEL MARQUES', 'ANALISTA DE SUPORTE'),
(3, 'NTB0000003', 'C02HXV9NDTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', ''),
(4, 'NTB0000004', 'C02HXVBADTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', ''),
(5, 'NTB0000005', 'C02HXVAWDTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '-', 'BRASILIA', '17/09/2013', '', ''),
(6, 'NTB0000006', 'C02HXVBGDT', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '-', 'BRASILIA', '17/09/2013', '', ''),
(7, 'NTB0000007', 'C02HXVB7DTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '-', 'BRASILIA', '17/09/2013', '', ''),
(8, 'NTB0000008', 'C02HXVC6DTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', ''),
(9, 'NTB0000009', 'C02HXVC3DTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', ''),
(10, 'NTB0000010', 'C02HXVALDTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', ''),
(12, 'NTB0000011', 'C02J2081DTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'NOVO', '', 'BRASILIA', '17/09/2013', '', ''),
(13, 'NTB0000012', 'C02HXV95DTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', ''),
(14, 'NTB0000013', 'C02HXVBSDTY4', 'NOTEBOOK', 'APLE', 'MACBOOK PRO', 'CORE I7 2,9 GHZ - 8GB - HD 750GB', 'BOM', '', 'BRASILIA', '17/09/2013', '', '');

CREATE TABLE IF NOT EXISTS usuarios (
  id_reg int(10) unsigned NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  usuario varchar(50) NOT NULL,
  senha varchar(50) NOT NULL,
  PRIMARY KEY (id_reg),
  UNIQUE KEY usuario (usuario)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO usuarios (id_reg, nome, usuario, senha) VALUES
(1, 'Rafael Marques', 'rmarques', '150501');