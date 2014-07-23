CREATE  TABLE `PENSIONWEB`.`PPE_T_OPCION` (
  `opcid` INT NOT NULL COMMENT 'Id Opción' ,
  `opcdes` VARCHAR(45) NOT NULL COMMENT 'Descripción Opción' ,
  `opclnk` VARCHAR(500) NOT NULL COMMENT 'Opción Link' ,
  `opcest` CHAR(1) NOT NULL COMMENT 'Estado Opción' ,
  PRIMARY KEY (`opcid`) );

INSERT INTO `PENSIONWEB`.`PPE_T_OPCION` (`opcid`, `opcdes`, `opclnk`, `opcest`) VALUES ('1', 'Lista de Boletas', 'BoletaServlet', 'A');
INSERT INTO `PENSIONWEB`.`PPE_T_OPCION` (`opcid`, `opcdes`, `opclnk`, `opcest`) VALUES ('2', 'Realizar Consulta', 'ConsultaServlet', 'A');


CREATE  TABLE `PENSIONWEB`.`PPE_T_USU_OPC` (
  `nrodoc` VARCHAR(10) NOT NULL ,
  `opcid` INT NOT NULL ,
  PRIMARY KEY (`nrodoc`, `opcid`) );

INSERT INTO `PENSIONWEB`.`PPE_T_USU_OPC` (`nrodoc`, `opcid`) VALUES ('22290581', '1');
INSERT INTO `PENSIONWEB`.`PPE_T_USU_OPC` (`nrodoc`, `opcid`) VALUES ('22290581', '2');


CREATE TABLE `PENSIONWEB`.`PPE_T_CONSULTA` (
  `conId` INT(9) NOT NULL COMMENT 'Id de Consulta',
  `nrodoc` VARCHAR(10) NOT NULL,
  `conAsu` VARCHAR(50) NOT NULL COMMENT 'Asunto de Consulta',
  `conDes` VARCHAR(500) NOT NULL COMMENT 'Descripción de Consulta',
  `conFch` DATETIME NOT NULL,
  `conEst` VARCHAR(15) NOT NULL COMMENT 'Estado de Consulta',
  PRIMARY KEY (`conId`))
COMMENT = 'Consultas del Usuario';

INSERT INTO `PENSIONWEB`.`PPE_T_CONSULTA` (`conId`, `nrodoc`, `conAsu`, `conDes`, `conFch`, `conEst`) 
VALUES ('1', '10452832', 'Consulta Prueba 1', 'Descripción de Prueba para la Consulta 1', '2014-07-22', 'Enviada');


CREATE TABLE `PENSIONWEB`.`PPE_T_CONSULTA_RSP` (
  `conId` INT(9) NOT NULL COMMENT 'Id de Consulta',
  `rspConId` INT(9) NOT NULL COMMENT 'Id Respuesta',
  `rspConTip` VARCHAR(15) NOT NULL COMMENT 'Tipo de Respuesta',
  `rspConUsu` VARCHAR(45) NULL COMMENT 'Usuario de Respuesta',
  `rspConDes` VARCHAR(500) NOT NULL COMMENT 'Descripción de Respuesta',
  `rspConFch` DATETIME NOT NULL COMMENT 'Fecha de Respuesta',
  PRIMARY KEY (`conId`, `rspConId`))
COMMENT = 'Respuesta de Consulta';

INSERT INTO `PENSIONWEB`.`PPE_T_CONSULTA_RSP` (`conId`, `rspConId`, `rspConTip`, `rspConUsu`, `rspConDes`, `rspConFch`) VALUES ('1', '1', 'Respuesta', 'admin', 'Consulta Respondida', '2014-07-22');
