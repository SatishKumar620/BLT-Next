-- Migration: Add projects table
-- This migration adds the projects table that was missing from the initial schema.
CREATE TABLE IF NOT EXISTS projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    type TEXT,
    reward TEXT DEFAULT 'N/A',
    bugs INTEGER DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
-- Insert sample projects
INSERT OR IGNORE INTO projects (id, name, type, reward, bugs) VALUES
(1, 'Acme Corp', 'Web Application', '$500', 48),
(2, 'ShopSafe', 'E-Commerce Platform', '$1,000', 73),
(3, 'MedVault', 'Healthcare SaaS', '$5,000', 21);
