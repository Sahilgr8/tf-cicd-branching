variable "network_name" {
  type = string
  default = "netwrok-b"
}

# variable "service_account" {
#   type=string
#   default = "test-terraform@q-gcp-6614-davivienda-22-03.iam.gserviceaccount.com"
# }

variable "zone" {
  type =string
  default="us-central1-a"
}

variable "region" {
  type =string
  default="us-central1"
}

variable "labels" {
  type =map
  default = {
      proyecto="dev-datalake2",
      despliegue="paas",
      ambiente="dev",
      layer="processing",
      datalakezone="raw"
      fechainicio="20220501",
      tipopago="proyecto",
      duenoservicio="analitica", 
      centrocostos="tbd", 
      responsablepago="fredygaray",
  }
}

variable "zonasemicruda_folders" {
  type = set(string)
  default = ["ADMINISTRATIVA/",
			"TESORERIA/",
			"SILOS/",
			"DATOS_EXTERNOS/",
			"REFERENCIALES/",
			"CLIENTES/",
			"PASIVO/",
			"CUR_PASIVO/",
			"SEGUROS/",
			"CORREDORES/",
			"SEGURIDAD_FISICA/",
			"ACTIVO/",
			"CONTROLES/",
			"UTILITARIOS/",
			"INDICADORES_TASAS_Y_PRECIOS/",
			"ALIADOS_Y_COMERCIOS/",
			"CONTABLE/",
			"CANALES/",
			"CUR_REFERENCIALES/",
			"FABRICA_CREDITO/",
			"FIDUCIARIA/",
			"TALENTO_HUMANO/",
			"MONEDA_EXTRANJERA/",
			"CUR_DATOS_EXTERNOS/",
			"CUR_CANALES/"]
}

variable "zonacurada_folders" {
  type = set(string)
  default = ["ADMINISTRATIVA/",
			"TESORERIA/",
			"SILOS/",
			"DATOS_EXTERNOS/",
			"REFERENCIALES/",
			"PERSONA/",
			"CUENTAS_Y_CDT/",
			"SEGUROS/",
			"CORREDORES/",
			"SEGURIDAD_FISICA/",
			"CREDITO_Y_LEASING/",
			"CONTROLES/",
			"UTILITARIOS/",
			"INDICADORES_TASAS_Y_PRECIOS/",
			"ALIADOS_Y_COMERCIOS/",
			"CONTABLE/",
			"CANALES/",
			"FABRICA_CREDITO/",
			"FIDUCIARIA/",
			"TALENTO_HUMANO/",
			"MONEDA_EXTRANJERA/"]
}

variable "zonaconsumo_folders" {
  type = set(string)
  default = ["EST_PRODUCTOS/",
			"EST_AGENTES/",
			"EST_DATOS_CONTACTO/",
			"EST_FABRICA_B_PERSONAS/",
			"EST_FABRICA_B_EMPRESAS/",
			"EST_FINANCIERO_AGENTES/",
			"EST_TEMPORAL/",
			"EST_CERTIFICACION/",
			"ENR_COMPORTAMIENTO_PRODUCTO/",
			"ENR_COMUNICACION/",
			"ENR_GEOREFERENCIACION/",
			"ENR_LEALTAD/",
			"ENR_RIESGOS/",
			"ENR_SOCIOECONOMICOS/",
			"ENR_VALOR_CLIENTE/",
			"ENR_TEMPORAL/",
			"ENR_CERTIFICACION/"]
}

variable "zonaresultados_folders" {
  type = set(string)
  default = ["RES_CALIDAD_CDO/",
			"RES_CAMPANAS/",
			"RES_CONTROLES_Y_METRICAS/",
			"RES_ENTES_DE_CONTROL/",
			"RES_OPERACIONES_CANALES/",
			"RES_RAPPI/",
			"RES_RIESGO_TRANSACCIONAL/",
			"RES_TRAZABILIDAD/",
			"RES_INTERCAMBIO/"]
}

variable "bucket_names" {
  type=list(string)
  default = [ "sahilpawar1298","zonacruda-1266","zonaresultados-1298","zonasemicruda-1298","zonaconsumo-1298","zonacurada-1208","zonacruda-1200"]
}