
variables=("2m_temperature" "mean_sea_level_pressure" "10m_u_component_of_wind" "10m_v_component_of_wind")
for variable in "${variables[@]}"; do

    input_data="era5/${variable}.nc"
    remap_data="era5/procesed_data/${variable}_1_deg.nc"
    yearly_mean="era5/stadistics/${variable}_yearly_mean_1_deg.nc"
    december_data="era5/stadistics/${variable}_dec_1_deg.nc"
    cdo remapbil,grid.txt ${input_data} ${remap_data}
    cdo yearmean ${remap_data} ${yearly_mean}
    cdo -selmon,12 ${remap_data} ${december_data}
    
done

cdo merge "era5/stadistics/10m_u_component_of_wind_yearly_mean_1_deg.nc" "era5/stadistics/10m_v_component_of_wind_yearly_mean_1_deg.nc" "era5/procesed_data/pre_wind_speed_yearly_mean_1_deg.nc"

cdo expr,'wind_speed=sqrt(u10*u10 + v10*v10)' "era5/procesed_data/pre_wind_speed_yearly_mean_1_deg.nc" "era5/stadistics/wind_speed_yearly_mean_1_deg.nc"

