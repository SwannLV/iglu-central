-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.6.0
-- Generated: 2020-03-20 11:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.dev_amp_snowplow_amp_page_ping_1 (
    "schema_vendor"      VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_name"        VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_format"      VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_version"     VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "root_id"            CHAR(36)         ENCODE RAW  NOT NULL,
    "root_tstamp"        TIMESTAMP        ENCODE ZSTD NOT NULL,
    "ref_root"           VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "ref_tree"           VARCHAR(1500)    ENCODE ZSTD NOT NULL,
    "ref_parent"         VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "scroll_height"      DOUBLE PRECISION ENCODE RAW,
    "scroll_left"        DOUBLE PRECISION ENCODE RAW,
    "scroll_top"         DOUBLE PRECISION ENCODE RAW,
    "scroll_width"       DOUBLE PRECISION ENCODE RAW,
    "total_engaged_time" DOUBLE PRECISION ENCODE RAW,
    "viewport_height"    DOUBLE PRECISION ENCODE RAW,
    "viewport_width"     DOUBLE PRECISION ENCODE RAW,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.dev_amp_snowplow_amp_page_ping_1 IS 'iglu:dev.amp.snowplow/amp_page_ping/jsonschema/1-0-0';
