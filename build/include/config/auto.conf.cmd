deps_config := \
	/home/estelio/esp/esp-idf/components/app_trace/Kconfig \
	/home/estelio/esp/esp-idf/components/aws_iot/Kconfig \
	/home/estelio/esp/esp-idf/components/bt/Kconfig \
	/home/estelio/esp/esp-idf/components/driver/Kconfig \
	/home/estelio/esp/esp-idf/components/efuse/Kconfig \
	/home/estelio/esp/esp-idf/components/esp32/Kconfig \
	/home/estelio/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/estelio/esp/esp-idf/components/esp_event/Kconfig \
	/home/estelio/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/estelio/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/estelio/esp/esp-idf/components/esp_https_ota/Kconfig \
	/home/estelio/esp/esp-idf/components/espcoredump/Kconfig \
	/home/estelio/esp/esp-idf/components/ethernet/Kconfig \
	/home/estelio/esp/esp-idf/components/fatfs/Kconfig \
	/home/estelio/esp/esp-idf/components/freemodbus/Kconfig \
	/home/estelio/esp/esp-idf/components/freertos/Kconfig \
	/home/estelio/esp/esp-idf/components/heap/Kconfig \
	/home/estelio/esp/esp-idf/components/libsodium/Kconfig \
	/home/estelio/esp/esp-idf/components/log/Kconfig \
	/home/estelio/esp/esp-idf/components/lwip/Kconfig \
	/home/estelio/esp/esp-idf/components/mbedtls/Kconfig \
	/home/estelio/esp/esp-idf/components/mdns/Kconfig \
	/home/estelio/esp/esp-idf/components/mqtt/Kconfig \
	/home/estelio/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/estelio/esp/esp-idf/components/openssl/Kconfig \
	/home/estelio/esp/esp-idf/components/pthread/Kconfig \
	/home/estelio/esp/esp-idf/components/spi_flash/Kconfig \
	/home/estelio/esp/esp-idf/components/spiffs/Kconfig \
	/home/estelio/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/estelio/esp/esp-idf/components/unity/Kconfig \
	/home/estelio/esp/esp-idf/components/vfs/Kconfig \
	/home/estelio/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/estelio/esp/esp-idf/components/wifi_provisioning/Kconfig \
	/home/estelio/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/home/estelio/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/estelio/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/estelio/eclipse-workspace/Project_MasterNow/main/Kconfig.projbuild \
	/home/estelio/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/estelio/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
