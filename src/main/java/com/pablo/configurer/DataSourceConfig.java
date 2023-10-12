package com.pablo.configurer;

import javax.sql.DataSource;

public interface DataSourceConfig {
    DataSource configureDataSource();
}
