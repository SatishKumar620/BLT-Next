-- Migration: Add url, type, and steps columns to bugs table
-- These fields are collected by the report-bug form but were missing from the schema.

ALTER TABLE bugs ADD COLUMN url TEXT;
ALTER TABLE bugs ADD COLUMN type TEXT;
ALTER TABLE bugs ADD COLUMN steps TEXT;
