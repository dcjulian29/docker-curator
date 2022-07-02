@echo off
setlocal

pushd %~dp0

for /f "delims=" %%x in (version) do set VERSION=%%x

docker build --progress plain -t dcjulian29/elasticsearch-curator:%VERSION% .

if %errorlevel% neq 0 popd;exit /b %errorlevel%

popd

docker tag dcjulian29/elasticsearch-curator:%VERSION%  dcjulian29/elasticsearch-curator:latest
