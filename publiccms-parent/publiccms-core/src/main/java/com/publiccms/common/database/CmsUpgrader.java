package com.publiccms.common.database;

import java.io.IOException;
import java.io.StringWriter;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import com.publiccms.common.base.AbstractCmsUpgrader;
import com.publiccms.common.constants.CmsVersion;
import com.publiccms.common.tools.CommonUtils;

/**
 *
 * CmsUpgrader
 *
 */
public class CmsUpgrader extends AbstractCmsUpgrader {

    /**
     * 主键策略
     */
    public static final String IDENTIFIER_GENERATOR = IDENTIFIER_GENERATOR_IDENTITY;
    /**
     *
     */
    private final static String VERSION_20170708 = "V2017.0708", VERSION_20180210 = "V4.0.20180210",
            VERSION_180707 = "V4.0.180707", VERSION_180825 = "V4.0.180825", VERSION_181024 = "V4.0.181024";
    /**
     *
     */
    private final static List<String> VERSION_LIST = Arrays
            .asList(new String[] { VERSION_20170708, VERSION_20180210, VERSION_180707, VERSION_180825, VERSION_181024 });

    public CmsUpgrader(Properties config) {
        super(config);
    }

    /**
     * @throws SQLException
     * @throws IOException
     */
    @Override
    public void update(StringWriter stringWriter, Connection connection, String fromVersion) throws SQLException, IOException {
        switch (fromVersion) {
        case VERSION_20170708:
            runScript(stringWriter, connection, VERSION_20170708, VERSION_20180210);
        case VERSION_20180210:
            runScript(stringWriter, connection, VERSION_20180210, VERSION_180707);
        case VERSION_180707:
            updateMetadata(stringWriter, connection);
            runScript(stringWriter, connection, VERSION_180707, VERSION_180825);
        case VERSION_180825:
            runScript(stringWriter, connection, VERSION_180825, VERSION_180825);
        case VERSION_181024:
            runScript(stringWriter, connection, VERSION_181024, CmsVersion.getVersion());
        }
    }

    @Override
    public void setDataBaseUrl(Properties dbconfig, String host, String port, String database, String timeZone)
            throws IOException, URISyntaxException {
        StringBuilder sb = new StringBuilder();
        sb.append("jdbc:kingbase8://");
        sb.append(host);
        if (CommonUtils.notEmpty(port)) {
            sb.append(":");
            sb.append(port);
        }
        sb.append("/");
        sb.append(database);
        dbconfig.setProperty("jdbc.url", sb.toString());
        dbconfig.setProperty("jdbc.driverClassName", "com.kingbase8.Driver");
    }

    @Override
    public List<String> getVersionList() {
        return VERSION_LIST;
    }

    @Override
    public int getDefaultPort() {
        return 54321;
    }
}
