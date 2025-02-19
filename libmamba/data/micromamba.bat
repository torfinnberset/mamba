@REM Copyright (C) 2012 Anaconda, Inc
@REM SPDX-License-Identifier: BSD-3-Clause

__MAMBA_INSERT_MAMBA_EXE__
__MAMBA_INSERT_ROOT_PREFIX__

@IF [%1]==[activate]   "%~dp0_mamba_activate" %*
@IF [%1]==[deactivate] "%~dp0_mamba_activate" %*

@CALL %MAMBA_EXE% %*

@IF %errorlevel% NEQ 0 EXIT /B %errorlevel%

@IF [%1]==[install]   "%~dp0_mamba_activate" reactivate
@IF [%1]==[update]    "%~dp0_mamba_activate" reactivate
@IF [%1]==[upgrade]   "%~dp0_mamba_activate" reactivate
@IF [%1]==[remove]    "%~dp0_mamba_activate" reactivate
@IF [%1]==[uninstall] "%~dp0_mamba_activate" reactivate

@EXIT /B %errorlevel%
