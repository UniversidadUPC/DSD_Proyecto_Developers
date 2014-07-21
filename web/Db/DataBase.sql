CREATE  TABLE `PENSIONWEB`.`PPE_T_OPCION` (
  `opcid` INT NOT NULL COMMENT 'Id Opción' ,
  `opcdes` VARCHAR(45) NOT NULL COMMENT 'Descripción Opción' ,
  `opclnk` VARCHAR(500) NOT NULL COMMENT 'Opción Link' ,
  `opcest` CHAR(1) NOT NULL COMMENT 'Estado Opción' ,
  PRIMARY KEY (`opcid`) );

INSERT INTO `PENSIONWEB`.`PPE_T_OPCION` (`opcid`, `opcdes`, `opclnk`, `opcest`) VALUES ('1', 'Lista de Boletas', 'BoletaServlet', 'A');
INSERT INTO `PENSIONWEB`.`PPE_T_OPCION` (`opcid`, `opcdes`, `opclnk`) VALUES ('2', 'Realizar Consulta', 'ConsultaServlet');


CREATE  TABLE `PENSIONWEB`.`PPE_T_USU_OPC` (
  `nrodoc` VARCHAR(10) NOT NULL ,
  `opcid` INT NOT NULL ,
  PRIMARY KEY (`nrodoc`, `opcid`) );

  INSERT INTO `PENSIONWEB`.`PPE_T_USU_OPC` (`nrodoc`, `opcid`) VALUES ('22290581', '1');
INSERT INTO `PENSIONWEB`.`PPE_T_USU_OPC` (`nrodoc`) VALUES ('22290581');
