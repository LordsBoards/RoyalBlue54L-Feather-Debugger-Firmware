# Copyright (c) 2024 Lord's Boards LLC
# SPDX-License-Identifier: Apache-2.0

if(BOARD_ROYALBLUE54L_NRF54L15_CPUAPP_NS)
  set(TFM_PUBLIC_KEY_FORMAT "full")
endif()

if(CONFIG_TFM_FLASH_MERGED_BINARY)
  set_property(TARGET runners_yaml_props_target PROPERTY hex_file tfm_merged.hex)
endif()

board_runner_args(pyocd "--target=nrf52833" "--frequency=4000000")
include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
