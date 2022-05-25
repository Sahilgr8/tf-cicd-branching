# Variables for Storage Bucket creation
variable "project_id" {
  type        = string
  description = "GCP Project ID where the bucket will be created."
}

variable "location" {
  type        = string
  description = "Location of the GCS bucket. Available values - https://cloud.google.com/storage/docs/locations."
  default     = "us-central1"
}


variable "storage_class" {
  type        = string
  description = "Storage class of the GCS bucket. Available values - https://cloud.google.com/storage/docs/storage-classes."
  default     = "standard"
}

variable "uniform_bucket_level_access" {
  type = bool
  default = true
}

variable "force_destroy" {
  type = bool
  default = false
}

variable "versioning_enabled" {
  type = bool
  default = false
}

# variable "labels" {
#   type = map
#   default = {}
# }

# variable "bucket_names" {
#   type = list(string)
# }

# variable "zonasemicruda_folders" {
#   type = set(string)
# }

# variable "zonaconsumo_folders" {
#   type = set(string)
# }

# variable "zonacurada_folders" {
#   type = set(string)
# }

# variable "zonaresultados_folders" {
#   type = set(string)
# }

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
  default = ["ADMINISTRATIVA",
			"TESORERIA",
			"SILOS",
			"DATOS_EXTERNOS",
			"REFERENCIALES",
			"CLIENTES",
			"PASIVO",
			"CUR_PASIVO",
			"SEGUROS",
			"CORREDORES",
			"SEGURIDAD_FISICA",
			"ACTIVO",
			"CONTROLES",
			"UTILITARIOS",
			"INDICADORES_TASAS_Y_PRECIOS",
			"ALIADOS_Y_COMERCIOS",
			"CONTABLE",
			"CANALES",
			"CUR_REFERENCIALES",
			"FABRICA_CREDITO",
			"FIDUCIARIA",
			"TALENTO_HUMANO",
			"MONEDA_EXTRANJERA",
			"CUR_DATOS_EXTERNOS",
			"CUR_CANALES"]
}

variable "zonacurada_folders" {
  type = set(string)
  default = ["ADMINISTRATIVA",
			"TESORERIA",
			"SILOS",
			"DATOS_EXTERNOS",
			"REFERENCIALES",
			"PERSONA",
			"CUENTAS_Y_CDT",
			"SEGUROS",
			"CORREDORES",
			"SEGURIDAD_FISICA",
			"CREDITO_Y_LEASING",
			"CONTROLES",
			"UTILITARIOS",
			"INDICADORES_TASAS_Y_PRECIOS",
			"ALIADOS_Y_COMERCIOS",
			"CONTABLE",
			"CANALES",
			"FABRICA_CREDITO",
			"FIDUCIARIA",
			"TALENTO_HUMANO",
			"MONEDA_EXTRANJERA"]
}

variable "zonaconsumo_folders" {
  type = set(string)
  default = ["EST_PRODUCTOS",
			"EST_AGENTES",
			"EST_DATOS_CONTACTO",
			"EST_FABRICA_B_PERSONAS",
			"EST_FABRICA_B_EMPRESAS",
			"EST_FINANCIERO_AGENTES",
			"EST_TEMPORAL",
			"EST_CERTIFICACION",
			"ENR_COMPORTAMIENTO_PRODUCTO",
			"ENR_COMUNICACION",
			"ENR_GEOREFERENCIACION",
			"ENR_LEALTAD",
			"ENR_RIESGOS",
			"ENR_SOCIOECONOMICOS",
			"ENR_VALOR_CLIENTE",
			"ENR_TEMPORAL",
			"ENR_CERTIFICACION"]
}

variable "zonaresultados_folders" {
  type = set(string)
  default = ["RES_CALIDAD_CDO",
			"RES_CAMPANAS",
			"RES_CONTROLES_Y_METRICAS",
			"RES_ENTES_DE_CONTROL",
			"RES_OPERACIONES_CANALES",
			"RES_RAPPI",
			"RES_RIESGO_TRANSACCIONAL",
			"RES_TRAZABILIDAD",
			"RES_INTERCAMBIO"]
}

variable "bucket_names" {
  type=list(string)
  default = [
  "03p-datalake2-gcs-zonacruda-drive-d01",
	"03p-datalake2-gcs-zonacruda-davibox-d02",
	"03p-datalake2-gcs-zonacruda-file server-d03",
	"03p-datalake2-gcs-zonacruda-as/400-d04",
	"03p-datalake2-gcs-zonacruda-servidor cobranzas-d05",
	"03p-datalake2-gcs-zonacruda-servidor riesgo-d06",
	"03p-datalake2-gcs-zonacruda-servidor planeacion-d07",
	"03p-datalake2-gcs-zonacruda-sandboxm-d08",
	"03p-datalake2-gcs-zonacruda-stratus-d09",
	"03p-datalake2-gcs-zonacruda-microfocus-d10",
	"03p-datalake2-gcs-zonacruda-sftp-d11",
	"03p-datalake2-gcs-zonacruda-coeasy-d12",
	"03p-datalake2-gcs-zonacruda-davision-d13",
	"03p-datalake2-gcs-zonacruda-sas fm-d14",
	"03p-datalake2-gcs-zonacruda-saf-d15",
	"03p-datalake2-gcs-zonacruda-siglease-d16",
	"03p-datalake2-gcs-zonacruda-sei-d17",
	"03p-datalake2-gcs-zonacruda-bodega-d18",
	"03p-datalake2-gcs-zonacruda-externo-d19",
	"03p-datalake2-gcs-zonacruda-postilion-d20",
	"03p-datalake2-gcs-zonacruda-epayco-d21",
	"03p-datalake2-gcs-zonacruda-fincar-d22",
	"03p-datalake2-gcs-zonacruda-axon-d23",
	"03p-datalake2-gcs-zonacruda-canales_comerciales-d24",
	"03p-datalake2-gcs-zonacruda-daviplata-d25",
	"03p-datalake2-gcs-zonacruda-genesis-d26",
	"03p-datalake2-gcs-zonacruda-pendiente-d27",
	"03p-datalake2-gcs-zonacruda-topaz 5-d28",
	"03p-datalake2-gcs-zonacruda-credipyme-d29",
	"03p-datalake2-gcs-zonacruda-siebel-d30",
	"03p-datalake2-gcs-zonacruda-transunion-d31",
	"03p-datalake2-gcs-zonacruda-credibanco-d32",
	"03p-datalake2-gcs-zonacruda-datacredito-d33",
	"03p-datalake2-gcs-zonacruda-vista_cloudera-d34",
	"03p-datalake2-gcs-zonacruda-sif-d35",
	"03p-datalake2-gcs-zonacruda-lombardi-d36",
	"03p-datalake2-gcs-zonacruda-fincre-d37",
	"03p-datalake2-gcs-zonacruda-scacs-d38",
	"03p-datalake2-gcs-zonacruda-transferencias seguras davivienda-d39",
	"03p-datalake2-gcs-zonacruda-powercurve-d40",
	"03p-datalake2-gcs-zonacruda-app - componente transversal-d41",
	"03p-datalake2-gcs-zonacruda-listras restrictivas-d42",
	"03p-datalake2-gcs-zonacruda-eloqua-d43",
	"03p-datalake2-gcs-zonacruda-sas-d44",
	"03p-datalake2-gcs-zonacruda-sarh-d45",
	"03p-datalake2-gcs-zonacruda-pfm-d46",
	"03p-datalake2-gcs-zonacruda-fsdicovery-d47",
	"03p-datalake2-gcs-zonacruda-topaz 4-d48",
	"03p-datalake2-gcs-zonacruda-murex-d49",
	"03p-datalake2-gcs-zonacruda-global transfer-d50",
	"03p-datalake2-gcs-zonacruda-colpensiones-d51",
	"03p-datalake2-gcs-zonacruda-dian-d52",
	"03p-datalake2-gcs-zonacruda-emailage-d53",
	"03p-datalake2-gcs-zonacruda-estrategia banca empresas-d54",
	"03p-datalake2-gcs-zonacruda-zuana-d55",
	"03p-datalake2-gcs-zonacruda-ach-d56",
	"03p-datalake2-gcs-zonacruda-gestor financiero de riesgo y credito-d57",
	"03p-datalake2-gcs-zonacruda-frm-d58",
	"03p-datalake2-gcs-zonacruda-rsa-d59",
	"03p-datalake2-gcs-zonacruda-servidor sadgpirt-d60",
	"03p-datalake2-gcs-zonacruda-bytte-d61",
	"03p-datalake2-gcs-zonacruda-davicom-d62",
	"03p-datalake2-gcs-zonacruda-app_empresas-d63",
	"03p-datalake2-gcs-zonacruda-app_davivienda-d64","03p-datalake2-gcs-zonacruda-potal_pyme-d65","03p-datalake2-gcs-zonacruda-davivienda.com-d66","03p-datalake2-gcs-zonacruda-hagamos vaca-d67","03p-datalake2-gcs-zonacruda-telefono rojo-d68","03p-datalake2-gcs-zonacruda-valid-d69","03p-datalake2-gcs-zonacruda-todo1-d70","03p-datalake2-gcs-zonacruda-doc1-d71","03p-datalake2-gcs-zonacruda-rightnow-d72","03p-datalake2-gcs-zonacruda-site venta digital-d73","03p-datalake2-gcs-zonasemicruda-d01","03p-datalake2-gcs-zonacurada-d01","03p-datalake2-gcs-zonaconsumo-d01","03p-datalake2-gcs-zonaresultados-d01","03p-datalake2-gcs-entrega-d01","03p-datalake2-gcs-artefactos-d01","03p-datalake2-gcs-configuraciones-d01"
  ,"03p-datalake2-gcs-transporte-d01"]
}